package com.study.map.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface mapMapper {
    
	List<String> selectGeoJsonLcbd100l();


}