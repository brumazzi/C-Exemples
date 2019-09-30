#include <boost/asio.hpp>
#include <boost/asio/ip/tcp.hpp>
#include <boost/io_fwd.hpp>
#include <boost/timer.hpp>

#include <iostream>

using boost::asio::ip::tcp;
using namespace boost::asio;

int main(int argc, char *argv[]){
	io_service serv;

	tcp::endpoint endp(tcp::v4(), 8080);
	tcp::acceptor accept(serv, endp);

	while(true){
		tcp::iostream stream;
		boost::system::error_code ec;
		accept.accept(*stream.rdbuf(), ec);
		if(!ec){
			stream << "Welcome!\n";
			stream.flush();
			stream << "hello!\n";
			stream.flush();
		}
	}

	return 0;
}
