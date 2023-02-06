package service;

import java.util.List;

import dao.BoardDaoImpl;
import dao.IBoardDao;
import dto.BoardVO;

public class BoardServiceImpl implements IBoardService{

	private static IBoardService boardService;
	
	private IBoardDao boardDao;
	
	public BoardServiceImpl() {
		boardDao = BoardDaoImpl.getInstance();
	}
	
	public static IBoardService getInstance() {
		if(boardService == null) {
			boardService = new BoardServiceImpl();
		}
		return boardService;
	}
	
	@Override
	public List<BoardVO> listBoard() {
	
		return boardDao.selectBoard();
	}

	@Override
	public BoardVO getBnum(int bnum) {
		return boardDao.getBnum(bnum);
	}
	
	@Override
	public int modifyBoard(BoardVO bv) {
		return boardDao.updateBoard(bv);
	}
	
}
