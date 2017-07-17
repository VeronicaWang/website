package com.jredu.ssm.services;
import java.util.List;
import com.jredu.ssm.entity.ImgInfo;
public interface ImgInfoServices {
	public List<ImgInfo> getImgList();
	public void updateImg(ImgInfo imgInfo); 
}
