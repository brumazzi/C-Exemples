#include "windows.h"

enum { ID_LABEL = 1,ID_IMAGE,ID_EDIT,ID_LIST,ID_BUTTON,ID_COMBO, ID_BUTTON2 };
LRESULT CALLBACK WinProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam); 

HINSTANCE g_hInst;
TCHAR	szAppName[]	= TEXT("SDI Frame");
TCHAR	szWinClass[]	= TEXT("WIN_CLASS");
HWND static_label;
HWND edit;
HWND button;

int WINAPI WinMain(HINSTANCE hInstance, 
		HINSTANCE hPrevInstance,
		PSTR lpCmdLine,
		int nCmdShow){

	MSG			msg; 
	WNDCLASS	wc;	
	HWND		hwnd; 
	g_hInst = hInstance;

	wc.cbClsExtra		= 0; 
	wc.cbWndExtra		= 0; 
	wc.hbrBackground	= (HBRUSH)(COLOR_WINDOW+1); 
	wc.hCursor			= LoadCursor(NULL, IDC_ARROW); 
	wc.hIcon			= LoadIcon(NULL, IDI_APPLICATION); 
	wc.hInstance		= hInstance; 
	wc.lpfnWndProc		= WinProc; 
	wc.lpszClassName	= szWinClass; 
	wc.lpszMenuName		= NULL; 
	wc.style			= CS_HREDRAW | CS_VREDRAW; 

	if( !RegisterClass(&wc)) 
	{
		MessageBox(NULL, TEXT("Error registering class"), TEXT("ERROR"), MB_OK);
		return 0;
	}

	hwnd = CreateWindow(szWinClass,
			szAppName, 
			WS_OVERLAPPEDWINDOW, 
			CW_USEDEFAULT, 
			CW_USEDEFAULT, 
			300, 
			400, 
			(HWND) NULL, 
			(HMENU) NULL, 
			(HINSTANCE) hInstance, 
			(void *) NULL); 

	ShowWindow(hwnd, nCmdShow); 
	UpdateWindow(hwnd);	

	while (GetMessage(&msg, (HWND) NULL, 0, 0))
	{
		TranslateMessage(&msg); 
		DispatchMessage(&msg); 
	}
	return msg.wParam; 
}

LRESULT CALLBACK WinProc(HWND hwnd, UINT msg, WPARAM wParam, LPARAM lParam){
	PAINTSTRUCT	ps;
	HDC			hdc;
	switch(msg){
		case WM_CREATE:
			static_label = CreateWindow("Static",
					"Please Enter A Number",WS_CHILD | WS_VISIBLE,40,15,200,25,hwnd,0,g_hInst,0);	
			edit = CreateWindow("Edit", "", WS_BORDER | WS_CHILD | WS_VISIBLE ,40,45,200,20,hwnd,(HMENU) NULL,g_hInst,0);
			button = CreateWindow("Button","Calculate",
					BS_PUSHBUTTON | WS_CHILD | WS_VISIBLE ,140,70,100,25,hwnd,(HMENU)ID_BUTTON,g_hInst,0);	
		case WM_PAINT: 
			hdc = BeginPaint(hwnd, &ps);
			EndPaint(hwnd, &ps);
			return 0;
		case ID_BUTTON:
			{
				puts("saida");
				// code
				SendMessage(static_label,LB_ADDSTRING,255,(LPARAM)(LPCSTR)"You clicked the button");
				ShowWindow(static_label,SW_SHOW);
			}
			break;	
		case WM_DESTROY: 
			PostQuitMessage(0);
			break; // pass to DefWindowProc(...) as well
		case WM_CLOSE:
			DestroyWindow(hwnd);
			break;
	}return DefWindowProc(hwnd, msg, wParam, lParam);}
