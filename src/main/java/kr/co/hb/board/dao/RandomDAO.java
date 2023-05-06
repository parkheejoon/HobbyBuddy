package kr.co.hb.board.dao;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.hb.board.dto.RandomDTO;
import kr.co.hb.group.dto.GroupBoardDTO;

public interface RandomDAO {

	ArrayList<RandomDTO> profileList(HashMap<String, String> params);
	
	ArrayList<RandomDTO> randomList(HashMap<String, String> params);

	ArrayList<RandomDTO> nonameList(HashMap<String, String> params);

	RandomDTO detail(String id);

	ArrayList<RandomDTO> pssearch(HashMap<String, String> params);

	ArrayList<RandomDTO> pwsearch(HashMap<String, String> params);

	ArrayList<RandomDTO> pcsearch(HashMap<String, String> params);


	
	
	
}
