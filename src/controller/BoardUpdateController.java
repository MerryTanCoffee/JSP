package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dto.BoardVO;
import service.BoardServiceImpl;
import service.IBoardService;

@WebServlet("/board/update.do")
public class BoardUpdateController extends HttpServlet {

	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		int bnum = Integer.parseInt(req.getParameter("bnum"));
		
		IBoardService boardService = BoardServiceImpl.getInstance();
		
		BoardVO bv = boardService.getBnum(bnum);
		
		req.setAttribute("bv", bv);
		
		req.getRequestDispatcher("/ch11/totaltest/boardUpdate.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		IBoardService boardService = BoardServiceImpl.getInstance();
		int bnum = Integer.parseInt(req.getParameter("bnum"));
		String subject = req.getParameter("subject");
		String bcon = (String)(req.getParameter("bcon").trim());
		
		
		BoardVO bv = new BoardVO();
		
		bv.setBnum(bnum);
		bv.setSubject(subject);
		bv.setBcon(bcon);
		
		int cnt = boardService.modifyBoard(bv);
		
		String msg = "";
	      
	    if(cnt > 0 ) {
	       msg = "성공";
	    } else {
	       msg = "실패";
	    }
	      
		session.setAttribute("msg", msg);

		
		resp.sendRedirect(req.getContextPath() + "/board/list.do");
	
	}
}
