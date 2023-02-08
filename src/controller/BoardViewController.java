package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BoardVO;
import service.BoardServiceImpl;
import service.IBoardService;

@WebServlet("/board/detail.do")
public class BoardViewController extends HttpServlet {
 
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int bnum = Integer.parseInt(req.getParameter("bnum"));
		
		IBoardService boardService = BoardServiceImpl.getInstance();
		
		BoardVO bv = boardService.getBnum(bnum);
		
		req.setAttribute("bv", bv);
		req.setAttribute("bnum", bnum);
		
		req.getRequestDispatcher("/ch11/totaltest/boardView.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String boardNum = req.getParameter("bnum");
		int bnum = 0;
		if("".equals(boardNum) != true) {
			bnum = Integer.parseInt(boardNum);
		}
		
		if("".equals(boardNum) != true) {
			req.setAttribute("bnum", Integer.toString(bnum));
		}	
		
		resp.sendRedirect(req.getContextPath() + "/board/detail.do");
	}
}
