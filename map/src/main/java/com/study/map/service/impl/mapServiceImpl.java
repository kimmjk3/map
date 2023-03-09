package com.study.map.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.map.service.mapService;

@Service("mapService")
public class mapServiceImpl implements mapService {
	
    @Autowired
    private com.study.map.mapper.mapMapper mapMapper;

	@Override
	public List<String> getGeoJsonLcbd100l() {
		// TODO Auto-generated method stub
		List<String> lcbd100lList;
		
		lcbd100lList = mapMapper.selectGeoJsonLcbd100l();
		
		for(String data : lcbd100lList) {
			System.out.println(data);
		}
		
		return lcbd100lList;
	}

}
