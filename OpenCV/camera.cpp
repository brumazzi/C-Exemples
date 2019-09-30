#include "opencv2/opencv.hpp"

int main(int argc, char *argv[]){
	cv::VideoCapture cap(0);

	if(!cap.isOpened())
		return -1;

	cv::Mat edges;
	cv::namedWindow("Camera", 1);
	while(true){
		cv::Mat frame;
		cap >> frame;
		cv::cvtColor(frame, edges, cv::COLOR_BGR2GRAY);
		cv::GaussianBlur(edges, edges, cv::Size(7,7), 1.5, 1.5);
		cv::Canny(edges, edges, 0, 30, 3);
		cv::imshow("Camera", edges);
		if(cv::waitKey(30) >= 0) break;
	}
	return 0;
}
