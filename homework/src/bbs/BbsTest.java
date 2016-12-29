package bbs;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import bbs.BbsDAO;
import bbs.BbsDTO;

public class BbsTest {
	public static void main(String[] args) {
		BbsDAO dao = new BbsDAO();
		//create(dao);
		//list(dao);
		//read(dao);
		//update(dao);
		//delete(dao);
		//readReply(dao);
		total(dao);
		//checkRefno(dao);
	
		
	}

	

	private static void checkRefno(BbsDAO dao) {
		int bbsno = 19;
		if(dao.checkRefno(bbsno)){
			p("부모글 입니다.");
		}else{
			p("부모글이 아닙니다.");
		}
	
	}

	private static void total(BbsDAO dao) {
	String col = "wname";
	String word = "";
		int total = dao.total(col, word);
	p("total:"+total);
		
	}

	private static void readReply(BbsDAO dao) {
		BbsDTO dto = dao.readReply(2);
		p(dto);
		
	}

	private static void delete(BbsDAO dao) {
		if(dao.delete(9)){
			p("성공");
		}else{
			p("실패");
		}
	}

	private static void update(BbsDAO dao) {
		BbsDTO dto = dao.read(22);
		dto.setWname("오동동");
		dto.setTitle("제목변경2");
		dto.setContent("내용변경2");
		dto.setFilename("text2.txt");
		dto.setFilesize(100);
		if(dao.update(dto)){
			p("성공");
			dto=dao.read(22);
			p(dto);
		}else{
			p("실패");
		}
	}

	private static void read(BbsDAO dao) {
		BbsDTO dto = dao.read(1);
		p(dto);
	}

	private static void list(BbsDAO dao) {
		Map map = new HashMap();
		String col = "name";
		String word = "";
		int sno = 1;
		int eno = 5;
		map.put("col", col);
		map.put("word", word);
		map.put("sno", sno);
		map.put("eno", eno);
		List<BbsDTO> list = dao.list(map);
		Iterator<BbsDTO> iter = list.iterator();
		while(iter.hasNext()){
			BbsDTO dto = iter.next();
			p(dto);
		}
	}

	private static void create(BbsDAO dao) {
		BbsDTO dto = new BbsDTO();
		dto.setWname("김길동");
		dto.setTitle("게시판 제목");
		dto.setContent("게시판 내용");
		dto.setPasswd("1234");
		dto.setFilename("text.txt");
		dto.setFilesize(20);
		if(dao.create(dto)){
			p("성공");
		}else{
			p("실패");
		}
	}

	private static void p(BbsDTO dto) {
		p("번호 : "+dto.getBbsno());
		p("성명 : "+dto.getWname());
		p("제목 : "+dto.getTitle());
		p("조회수 : "+dto.getViewcnt());
		p("등록일 : "+dto.getWdate());
		p("-------------------------");
		p("내용 : "+dto.getContent());
		p("indent : "+dto.getIndent());
		p("파일명 : "+dto.getFilename());
		p("-------------------------");
	}
	private static void p(String string) {
		System.out.println(string);
	}
}