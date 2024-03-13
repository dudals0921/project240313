package com.myedumyselect.admin.openapi.data.service;

import java.util.List;

import com.myedumyselect.admin.openapi.data.vo.AcademySourceVO;

public interface DataService {

	public int listTotalCount() throws Exception;

	public List<AcademySourceVO> insertAcademySourceList(int listTotalCount) throws Exception;
	
	public int selectAcademySourceCount();

}
