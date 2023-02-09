package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.BoardVO;
import service.BoardServiceImpl;
import service.IBoardService;

@WebServlet(value="/board/insert.do")
public class BoardInsertController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.getRequestDispatcher("/ch11/totaltest/boardInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		BoardVO bv = new BoardVO();
		
		int bnum = Integer.parseInt(req.getParameter("bnum"));
		String subject = req.getParameter("subject");
		String writer = req.getParameter("writer");
		int views = Integer.parseInt(req.getParameter("views"));
		String bcon = req.getParameter("bcon");
	
		IBoardService boardService = BoardServiceImpl.getInstance();
		
		bv.setBnum(bnum);
		bv.setSubject(subject);
		bv.setWriter(writer);
		bv.setViews(views);
		bv.setBcon(bcon);
		
	}
}
