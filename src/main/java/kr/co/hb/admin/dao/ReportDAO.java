package kr.co.hb.admin.dao;

import java.util.ArrayList;

import kr.co.hb.admin.dto.ReportDTO;

public interface ReportDAO {

	int totalCount();

	ArrayList<ReportDTO> reportPageList(int cnt, int offset);

	ReportDTO reportDetail(String rept_no);

	void commentWrite(ReportDTO dto);

	ReportDTO reportCommentDetail(int rept_no);

}
