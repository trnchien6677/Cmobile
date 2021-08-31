package com.tranvanchien.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tranvanchien.dao.BannerDAO;
import com.tranvanchien.model.Banner;



@Service
public class BannerServiceImpl implements BannerService {
	@Autowired
	private BannerDAO bannerDAO;

	public void setBannerDAO(BannerDAO bannerDAO) {
		this.bannerDAO = bannerDAO;
	}

	

	@Transactional
	public List<Banner> listBanner() {
		return this.bannerDAO.listBanner();
	}

	@Transactional
	public List<Banner> listBannerDeal() {
		return this.bannerDAO.listBannerDeal();
	}

}

