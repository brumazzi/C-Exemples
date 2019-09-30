#include <boost/thread.hpp>
#include <iostream>

boost::thread callback();

int main(int argc, char *argv[]){
	boost::thread t(callback);
	t.join();
	std::cout << "No Thread!\n";

	return 0;
}

boost::thread callback(){
	std::cout << "Thread called!\n";
	boost::this_thread::sleep_for(boost::chrono::milliseconds(10000));
	std::cout << "qwerty" << std::endl;
}
