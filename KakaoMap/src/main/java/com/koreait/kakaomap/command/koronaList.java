package com.koreait.kakaomap.command;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.ui.Model;

import com.koreait.kakaomap.dao.KoronaDAO;
import com.koreait.kakaomap.dto.KoronaDTO;

public class koronaList implements KoronaCommand {

	@Override
	public Map<String, Object> execute(SqlSession sqlSession, Model model) {
		KoronaDAO kDAO = sqlSession.getMapper(KoronaDAO.class);
		List<KoronaDTO> koronaList = kDAO.selectKoronaList();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("koronaList", koronaList);
		map.put("result", true);
		return map ;
	}

}
