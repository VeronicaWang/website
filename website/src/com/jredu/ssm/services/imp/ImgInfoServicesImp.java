package com.jredu.ssm.services.imp;

import java.util.List;

import javax.annotation.Resource;
import org.springframework.stereotype.Service;
import com.jredu.ssm.dao.ImgInfoDao;
import com.jredu.ssm.entity.ImgInfo;
import com.jredu.ssm.services.ImgInfoServices;
@Service
public class ImgInfoServicesImp implements ImgInfoServices {
    @Resource
    ImgInfoDao imgInfoDao;
	@Override
	public List<ImgInfo> getImgList() {
		// TODO Auto-generated method stub
		return imgInfoDao.getImgInfo();
	}
	@Override
	public void updateImg(ImgInfo imgInfo) {
		// TODO Auto-generated method stub
		imgInfoDao.updateImg(imgInfo);
	}
}

