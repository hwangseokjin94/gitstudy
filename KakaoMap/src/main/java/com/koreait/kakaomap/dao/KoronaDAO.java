package com.koreait.kakaomap.dao;

import java.util.List;

import com.koreait.kakaomap.dto.KoronaDTO;

public interface KoronaDAO {
	public List<KoronaDTO> selectKoronaList();
}
