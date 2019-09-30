#include <windows.h>
#include <winuser.h>

#include <stdio.h>

#define CLASS_NAME TEXT("WindowClass")

enum{
	WA_NOEVENT,
	WA_BTN_CLOSE,
	WA_BTN_SUM,
	WA_BTN_SUB,
	WA_BTN_DIV,
	WA_BTN_MULT,
}WIDGET_ACTION;

LRESULT CALLBACK win_proc(HWND win, UINT msg, WPARAM wp, LPARAM lp){
	static HWND
		edit_n1 = NULL,
		edit_n2 = NULL,
		edit_res = NULL;
	char buff1[8] = {0};
	char buff2[8] = {0};
	char result[16] = {0};
	double buff = 0;
	switch(msg){
		case WM_COMMAND:
					GetWindowText(edit_n1, buff1, 8);
					GetWindowText(edit_n2, buff2, 8);
			switch(wp){
				case WA_BTN_CLOSE:
					DestroyWindow(win);
					break;
				case WA_BTN_SUM:
					buff = atof(buff1)+atof(buff2);
					sprintf(result,"%lf", buff);
					SetWindowText(edit_res, result);
					break;
				case WA_BTN_SUB:
					buff = atof(buff1)-atof(buff2);
					sprintf(result,"%lf", buff);
					SetWindowText(edit_res, result);
					break;
				case WA_BTN_DIV:
					buff = atof(buff1)/atof(buff2);
					sprintf(result,"%lf", buff);
					SetWindowText(edit_res, result);
					break;
				case WA_BTN_MULT:
					buff = atof(buff1)*atof(buff2);
					sprintf(result,"%lf", buff);
					SetWindowText(edit_res, result);
					break;
			}
			break;
		case WM_CREATE:
			edit_n1 = CreateWindow("edit",NULL, WS_VISIBLE | WS_CHILD,
					10,10,80,26, win, (HMENU) WA_NOEVENT,
					GetModuleHandle(NULL), NULL);
			edit_n2 = CreateWindow("edit",NULL, WS_VISIBLE | WS_CHILD,
					100,10,80,26, win, (HMENU) WA_NOEVENT,
					GetModuleHandle(NULL), NULL);
			edit_res = CreateWindow("edit",NULL, WS_VISIBLE | WS_CHILD,
					190,10,80,26, win, (HMENU) WA_NOEVENT,
					GetModuleHandle(NULL), NULL);
			CreateWindow("button","+", WS_VISIBLE | WS_CHILD,
					10,40,20,26, win, (HMENU) WA_BTN_SUM,
					GetModuleHandle(NULL), NULL);
			CreateWindow("button","-", WS_VISIBLE | WS_CHILD,
					40,40,20,26, win, (HMENU) WA_BTN_SUB,
					GetModuleHandle(NULL), NULL);
			CreateWindow("button","*", WS_VISIBLE | WS_CHILD,
					70,40,20,26, win, (HMENU) WA_BTN_MULT,
					GetModuleHandle(NULL), NULL);
			CreateWindow("button","/", WS_VISIBLE | WS_CHILD,
					100,40,20,26, win, (HMENU) WA_BTN_DIV,
					GetModuleHandle(NULL), NULL);
			CreateWindow("button","Sair", WS_VISIBLE | WS_CHILD,
					10,70,110,26, win, (HMENU) WA_BTN_CLOSE,
					GetModuleHandle(NULL), NULL);
			break;
		case WM_CLOSE:
			DestroyWindow(win);
			break;
		case WM_DESTROY:
			PostQuitMessage(0);
			break;
		default:
			return DefWindowProc(win, msg, wp, lp);
	}
	return 0;
}

int WINAPI WinMain(HINSTANCE instance, HINSTANCE pinstance, LPSTR args, int cmdshow){
	WNDCLASSEX wc;
	HWND win;
	MSG msg;

	wc.cbSize		= sizeof(WNDCLASSEX);
	wc.style		= 0;
	wc.lpfnWndProc		= win_proc;
	wc.cbClsExtra		= 0;
	wc.cbWndExtra		= 0;
	wc.hInstance		= instance;
	wc.hIcon		= LoadIcon(NULL, IDI_APPLICATION);
	wc.hCursor		= LoadCursor(NULL, IDC_ARROW);
	wc.hbrBackground	= (HBRUSH)(COLOR_WINDOW);
	wc.lpszMenuName		= NULL;
	wc.lpszClassName	= CLASS_NAME;
	wc.hIconSm		= LoadIcon(NULL, IDI_APPLICATION);

	if(!RegisterClassEx(&wc)){
		MessageBox(NULL, "Erro ao iniciar a aplicação!", "Erro",
				MB_ICONERROR | MB_OK);
		return 1;
	}

	win = CreateWindowEx(WS_EX_CLIENTEDGE, CLASS_NAME,
			"Get value from edit", WS_OVERLAPPEDWINDOW,
			160,200, 640, 480, NULL, NULL, instance, NULL);

	if(!win){
		MessageBox(NULL, "Erro ao inicia a janela!", "Erro",
				MB_ICONERROR | MB_OK);
		return 0;
	}

	ShowWindow(win, cmdshow);
	UpdateWindow(win);

	while(GetMessage(&msg, NULL, 0, 0) > 0){
		TranslateMessage(&msg);
		DispatchMessage(&msg);
	}
	
	return msg.wParam;
}
