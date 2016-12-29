package image;

import bbs.BbsDAO;
import bbs.BbsDTO;
import image.ImageDAO;
import image.ImageDTO;

public class ImageTest {

	public static void main(String[] args) {
		ImageDAO dao = new ImageDAO();
		
		//checkRefno(dao);
		readReply(dao);
	}
		private static void readReply(ImageDAO dao) {
			ImageDTO dto = dao.readReply(2);
			p(dto);
		
		
			
		}
		private static void p(ImageDTO dto) {
				p("번호 : "+dto.getNo());
				p("성명 : "+dto.getName());
				p("제목 : "+dto.getTitle());
				p("조회수 : "+dto.getViewcnt());
				p("등록일 : "+dto.getWdate());
				p("-------------------------");
				p("내용 : "+dto.getContent());
				p("indent : "+dto.getIno());
				p("파일명 : "+dto.getFilename());
				p("-------------------------");
			}
		private static void p(String string) {
			System.out.println(string);
		}

		/*private static void checkRefno(ImageDAO dao) {
			int no = 2;
			if(dao.checkRefno(no)){
				p("부모글 입니다.");
			}else{
				p("부모글이 아닙니다.");
			}
		
		}*/
}

