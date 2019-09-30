#include <wx/wx.h>

class MyApp: public wxApp{
	public:
		virtual bool OnInit();
};

class MainFrame: public wxFrame{
	public:
		MainFrame();
		void OnExit(wxCommandEvent& event);
		void OnHello(wxCommandEvent& event);
};

IMPLEMENT_APP(MyApp)

bool MyApp::OnInit(){
	auto mf = new MainFrame();
	mf->Show(true);
	return true;
}

MainFrame::MainFrame(): wxFrame(NULL, wxID_ANY, "Main Frame", wxDefaultPosition, wxSize(640, 480)){
	wxMenu *menu = new wxMenu;
	menu->Append(10, "&Hello", "help string");
	menu->AppendSeparator();
	menu->Append(wxID_EXIT);

	wxMenuBar *mbar = new wxMenuBar;
	mbar->Append(menu, "&File");

	SetMenuBar(mbar);
	CreateStatusBar();
	SetStatusText("Status text");

	Bind(wxEVT_MENU, &MainFrame::OnHello, this, 10);
	Bind(wxEVT_MENU, &MainFrame::OnExit, this, wxID_EXIT);
}

void MainFrame::OnHello(wxCommandEvent& event){
	wxMessageBox("Hello message","about", wxOK | wxICON_INFORMATION);
}
void MainFrame::OnExit(wxCommandEvent& event){
	Close(true);
}
