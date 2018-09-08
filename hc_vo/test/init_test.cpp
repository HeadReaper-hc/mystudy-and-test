#include<opencv2/opencv.hpp>
#include"abstract_camera.h"
#include"frame.h"
#include"initialization.h"
#include"pinhole_camera.h"
using namespace hc_vo;

int main(int argc, char *argv[])
{
	cv::Mat first_img(cv::imread("../dataset/init2.png", 0));
	cv::Mat second_img(cv::imread("../dataset/init3.png", 0));
	assert(first_img.type() == CV_8UC1 && !first_img.empty());
	assert(second_img.type() == CV_8UC1 && !second_img.empty());

	AbstractCamera* cam = new PinholeCamera(640, 480, 315.5, 315.5, 376.0, 240.0);

	FramePtr fisrt_frame(new Frame(cam, first_img, 0.0));
	FramePtr second_frame(new Frame(cam, second_img, 1.0));
	
	Initialization init;
	init.addFirstFrame(fisrt_frame);
	init.addSecondFrame(second_frame);
        std::cout<<fisrt_frame->T_f_w_<<std::endl;
	std::cout << second_frame->T_f_w_ << std::endl;

	return 0;
}
