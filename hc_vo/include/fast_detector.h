/*************************************************************************
 * 文件名： fast_detector
 *
 * 作者： 胡超
 * 邮件： 11734026@zju.edu.cn
 * 时间： 2018/7/31
 *
 * 说明： fast特征检测参考rpg_svo(https://github.com/uzh-rpg/rpg_svo) 冯兵博客
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
