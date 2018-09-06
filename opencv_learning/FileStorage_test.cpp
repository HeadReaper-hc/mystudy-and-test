#include <iostream>
#include <opencv2/opencv.hpp>
#include <opencv2/highgui.hpp>
#include <opencv2/core/core.hpp>
#include <string>
using namespace std;
using namespace cv;

int main(int argc , char** argv)
{
	FileStorage fs("1.xml" , FileStorage::WRITE);
	int num1,num2;
	num1=3,num2=4;
	fs<<"num1"<<num1;
	fs<<"num2"<<num2;
        fs<<"num3"<<5<<"num4"<<8;
	Mat A(4,5,CV_32FC1,Scalar(10));
	//fs["A"]<<A;
        fs << "features" << "[";
    for( int i = 0; i < 3; i++ )
    {
        int x = rand() % 640;
        int y = rand() % 480;
        uchar lbp = rand() % 256;
        fs << "{:" << "x" << x << "y" << y << "lbp" << "[:";
        for( int j = 0; j < 8; j++ )
            fs << ((lbp >> j) & 1);
        fs << "]" << "}";
    }
    fs << "]";

    // 序列输入：使用[]分割
 fs << "strings" << "[";                          // 开始时，先输入"["
 fs << "image1.jpg" << "onews" << "bools.jpg";
 fs << "]";                                       // 结束时，最后输入"]"

 // map输入：使用{}分割
 fs << "Mapping";
 fs << "{" << "One" << 1;
 fs <<        "Two" << 2 << "}";

 fs.release();

 FileStorage fs1("1.xml" , FileStorage::READ);


 FileNode n = fs1["strings"];
 //cout<<n<<endl;
 cout<<n.type()<<endl;
 cout<<FileNode::SEQ<<endl;
 cout<<FileNode::MAP<<endl;
 if (n.type() != FileNode::SEQ)
 {   cout << "err" << endl;    return 1;  }
 FileNodeIterator it = n.begin(), it_end = n.end();
 for (; it != it_end; ++it)
     cout << (string)*it << endl;

 // maps类型数据，可使用[]操作符访问
 n = fs1["Mapping"];
 cout << "Two" << (int) (n["Two"]) << ";";
 cout << "One" << (int) (n["One"])<< endl;
	fs1.release();
	return 0;
}
