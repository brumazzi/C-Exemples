#include <wx/wx.h>

class MainWindow: public wxFrame{
public:
	MainWindow(const wxString& title) : wxFrame(NULL, wxID_ANY, title, wxDefaultPosition, wxSize(640, 480)){
		Centre();
		//ShowFullScreen(true);
	};
};

class MyApp : public wxApp{
public:
	virtual bool OnInit(){
		MainWindow *mw = new MainWindow(wxT("Main Window"));
		mw->Show(true);

		return true;
	};
};

IMPLEMENT_APP(MyApp)

