#include <iostream>
#include <vector>
#include <ClanLib-4.0/ClanLib/core.h>
#include <ClanLib-4.0/ClanLib/display.h>
#include <ClanLib-4.0/ClanLib/ui.h>
#include <ClanLib-4.0/ClanLib/gl.h>
#include <ClanLib-4.0/ClanLib/application.h>


using namespace clan;

class Main: public clan::Application{
	public:
		Main(){
			//clan::Application::use_timeout_timing(std::numeric_limits<int>::max());
			clan::OpenGLTarget::enable();
//			auto res = FileResourceManager::create(doc);
//			auto ui_thread = UIThread(res);

			DisplayWindowDescription desc;
			desc.set_title("Window");
			desc.set_size(Sizef(640,480),true);
			auto root=std::make_shared<WindowView>(desc);

			slots.connect(root->sig_close(), [&](CloseEvent &e){RunLoop::exit();});

			auto body= std::make_shared<View>();
			body->style()->set("background: white");
			root->add_subview(body);
			auto label = std::make_shared<LabelView>();
			label->style()->set("font: 20px/40px 'Lucida Console'");
			label->style()->set("color: #123456");
			label->set_text("Hello");
			body->add_subview(label);

			root->show();
		}
		bool update() override{
			return true;
		}
		clan::SlotContainer slots;
};

clan::ApplicationInstance<Main> clanapp;
