#include <ClanLib/core.h>
#include <ClanLib/application.h>
#include <ClanLib/display.h>
#include <ClanLib/gl.h>

class Hello: public clan::Application{
	public:
		Hello(){
			clan::OpenGLTarget::set_current();

			clan::DisplayWindowDescription desc;
			desc.set_title("Clan Window");
			desc.set_size(clan::Size(800,600), true);
			win = clan::DisplayWindow(desc);
			this->quit = true;

			sc.connect(this->win.sig_window_close(), clan::bind_member(this, &Hello::on_close));
		}
		bool update() override{
			win.flip(1);

			return this->quit;
		}
	private:
		void on_close(){
			this->quit = false;
		}
		clan::DisplayWindow win;
		clan::SlotContainer sc;
		bool quit;
};

clan::ApplicationInstance<Hello> hello;
