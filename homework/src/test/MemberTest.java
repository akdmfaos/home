package test;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import member.MemberDAO;
import member.MemberDTO;

public class MemberTest {

	public static void main(String[] args) {
		MemberDAO dao = new MemberDAO();
		
		//duplicateId(dao);
		//duplicateEmail(dao);
		//create(dao);
		list(dao);

	}
	private static void list(MemberDAO dao) {
			Map map = new HashMap();
			map.put("col", "mname");
			map.put("word", "");
			map.put("sno", 1);
			map.put("eno", 5);
			List<MemberDTO> list =  dao.list(map);
			Iterator<MemberDTO> iter = list.iterator();
			while(iter.hasNext()){
				MemberDTO dto = iter.next();
				p(dto);
				p("-----------------");
			}
	}

	private static void create(MemberDAO dao){
		MemberDTO dto= new MemberDTO();
		dto.setId("te11");
		dto.setPasswd("123");
		dto.setMname("김동동");
		dto.setTel("010-1224-2131");
		dto.setEmail("gamil@naver.com");
		dto.setZipcode("aas123");
		dto.setAddress1("인천");
		dto.setAddress2("ㅇㅇㅇ");
		dto.setJob("Ao1");
		dto.setFname("member.jpg");
		if(dao.create(dto)){
			p("회원가입 완료");	
		}else{
			p("회원가입 실패");
		}
		
	}

	private static void duplicateEmail(MemberDAO dao) {
              String email ="email3@mai.com";
			if(dao.duplicateEmail(email)){
            	  
            	 p("중복된 아이디입니다");
              }else{
            	  p("사용가능한 아이디 입니다.");
              }	
	}
	

	private static void duplicateId(MemberDAO dao) {
              String id ="user1";
			if(dao.duplicateId(id )){
            	  
            	 p("중복된 아이디입니다");
              }else{
            	  p("사용가능한 아이디 입니다.");
              }	
	}
	
	private static void p(String string) {
			
		System.out.println(string);
		
	}
	private static void p(MemberDTO dto) {
		p("아이디 "+dto.getId());
		p("패스워드 : "+dto.getPasswd());
		p("이름: "+dto.getMname());
		p("전화번호 : "+dto.getTel());
		p("메일 : "+dto.getEmail());
		p("-------------------------");
		p("우편번호 : "+dto.getZipcode());
		p("주소 : "+dto.getAddress1());
		p("주소2 : "+dto.getAddress2());
		p("파일 이름" +dto.getFname());
		p("-------------------------");
		
	}
}
