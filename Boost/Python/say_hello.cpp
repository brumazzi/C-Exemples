#include <boost/python.hpp>

using namespace boost::python;

const char *say_hello(){
	return "hello";
}

BOOST_PYTHON_MODULE(say_hello){
	def("hello", say_hello);
}
