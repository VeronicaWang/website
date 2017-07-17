package com.jredu.ssm.dao;

import java.util.List;
import com.jredu.ssm.entity.ImgInfo;
public interface ImgInfoDao {
	public List<ImgInfo> getImgInfo();
	public void updateImg(ImgInfo imgInfo);
}
