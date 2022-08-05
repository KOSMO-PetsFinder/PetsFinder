package petsfinder.utils;

public class BoardPage {
	
	/*
	 * int totalCount : 총 게시물의 개수
	 * int pageSize : 한 페이지에 출력할 게시물의 개수(web.xml에 POSTS_PER_PAGE로 저장됨)
	 * int blockPage : 한 블럭 당 출력할 페이지 번호의 개수(web.sml에 PAGES_PER_BLOCK로 저장됨)
	 * int nowPage : 현재 진입한 목록의 페이지 번호(최초 진입시에는 무조건 1페이지)
	 * String reqUrl : 게시판 목록을 실행한 JSP파일 경로(request.getRequestURI()을 통해 경로를 얻어온다.)
	 * */
	public static String pagingStr(int totalCount, int pageSize, int blockPage, int nowPage, String reqUrl) {
		
		String pagingStr = "";
		
		int totalPages = (int) (Math.ceil((double) totalCount / pageSize));
		
		int pageTemp = (((nowPage - 1) / blockPage) * blockPage) + 1;

		if(pageTemp != 1) {
			pagingStr += "<li class=\"page-item\"><a class=\"page-link\" href='" + reqUrl + "?nowPage=1'><i class='bi bi-skip-backward-fill'></i></a></li>";
			pagingStr += "<li class=\"page-item\"><a class=\"page-link\" href='" + reqUrl + "?nowPage=" + (pageTemp - 1) + "'><i class='bi bi-skip-start-fill'></i></a></li>";
		}
		
		int blockCount = 1;
		
		while (blockCount <= blockPage && pageTemp <= totalPages) {
			if(pageTemp == nowPage) {
				pagingStr += "<li class=\"page-item active\"><a class=\"page-link\" >" + pageTemp + "</a></li>";
			} else {
				pagingStr += "<li class=\"page-item\"><a class=\"page-link\" href='" + reqUrl + "?nowPage=" + pageTemp + "'>" + pageTemp + "</a></li>";
			}
			pageTemp++;
			blockCount++;
		}
		
		if(pageTemp <= totalPages) {
			pagingStr += "<li class='page-item'><a class=\"page-link\" href='" + reqUrl + "?nowPage=" + pageTemp + "'><i class='bi bi-skip-end-fill'></i></a></li>";
			pagingStr += "<li class='page-item'><a class=\"page-link\" href='" + reqUrl + "?nowPage=" + totalPages + "'><i class='bi bi-skip-forward-fill'></i></a></li>";
		}
		
		return pagingStr;
	}
}
