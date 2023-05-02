package kr.co.hb.group.controller;

import java.util.ArrayList;
import java.util.HashMap;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hb.board.dto.BoardDTO;
import kr.co.hb.board.dto.RandomDTO;
import kr.co.hb.group.dto.GroupBoardDTO;
import kr.co.hb.group.service.GroupBoardService;

@Controller
public class GroupBoardController {
	
	@Autowired GroupBoardService service;
	Logger logger = LoggerFactory.getLogger(this.getClass());

	@RequestMapping(value="/glist.go")
	public String list(Model model) {		
		logger.info("listcall");
		ArrayList<GroupBoardDTO> list = service.glist();
		
		model.addAttribute("list", list);
		return "gBoardList";
	}
	
	@RequestMapping(value="/gsorting.do")
	public String sorting(Model model, @RequestParam HashMap<String, String> params) {		
				
		logger.info("검색 조건 : " + params);
		
		ArrayList<GroupBoardDTO> list = service.gsorting(params);
		
		model.addAttribute("list", list);
		
		return "gBoardList";
	}
	
	@RequestMapping(value="/gwrite.go")
	public String gwriteform(Model model, @RequestParam HashMap<String, String> params) {		
		
		return "gBoardCreate";
	}
	
	@RequestMapping(value="/gwrite.do")
	public String gwrite(Model model, @RequestParam HashMap<String, String> params) {		
				
		logger.info("생성 데이터 : " + params);

		String msg = "모임등록 실패!";
		int row = service.gwrite(params);
		
		if(row == 1) {
			
			msg = "모임등록 성공!";
		}
		
		model.addAttribute("msg", msg);
		return "redirect:/glist.go";
	}
	
	@RequestMapping(value="/gdetail.do")
	public String gdetail(Model model, @RequestParam int id) {
		
		logger.info("idx : " + id);
		GroupBoardDTO dto = service.gdetail(id);
		
		model.addAttribute("board", dto);
		
		return "gBoardDetail";
	}
	
	@RequestMapping(value="/gupdate.go")
	public String gupdateForm(Model model, @RequestParam int id) {		
			GroupBoardDTO dto = service.gupdate(id);
			model.addAttribute("board", dto);
		return "gBoardUpdate";
	}
	
	@RequestMapping(value="/gupdate.do")
	public String gupdate(Model model, @RequestParam HashMap<String, String> params) {		
			String msg = "수정실패";
			GroupBoardDTO row = service.gupdatedo(params);
			
			model.addAttribute("msg", msg);
		return "gBoardDetail";
	}

	@RequestMapping(value="/gserch.do")
	public String gserch(Model model, @RequestParam HashMap<String, String> params) {
		logger.info("serch : " + params.get("serch") + " / ssorting : " + params.get("ssorting"));
		ArrayList<GroupBoardDTO> list = service.gserch(params);
		
		model.addAttribute("list", list);
		return "gBoardList";
	}
	
	@RequestMapping(value="/greport.go")
	public String greList(Model model) {		
		logger.info("start");
		return "reportCreate";
	}
}