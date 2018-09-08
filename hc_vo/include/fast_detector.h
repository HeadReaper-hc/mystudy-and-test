/*************************************************************************
 * �ļ����� fast_detector
 *
 * ���ߣ� ����
 * �ʼ��� 11734026@zju.edu.cn
 * ʱ�䣺 2018/7/31
 *
 * ˵���� fast�������ο�rpg_svo(https://github.com/uzh-rpg/rpg_svo) �������
 *************************************************************************/
#ifndef HC_VO_FAST_DETECTOR_H_
#define HC_VO_FAST_DETECTOR_H_
#include "abstract_detector.h"
#include "frame.h"

namespace hc_vo
{
	class FastDetector : public AbstractDetector
	{
	public:
		FastDetector(
			const int img_width,
			const int img_height,
			const int cell_size,
			const int n_pyr_levels);

		virtual ~FastDetector() {}

		virtual void detect(
			Frame* frame,
			const ImgPyr& img_pyr,
			const double detection_threshold,
			Features& fts);

	private:
		float shiTomasiScore(const cv::Mat& img, int u, int v);
	};
}

#endif
