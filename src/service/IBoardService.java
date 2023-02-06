package service;

import java.util.List;

import dto.BoardVO;

public interface IBoardService {
	
	public List<BoardVO> listBoard();
	
	public BoardVO getBnum (int bnum);

	public int modifyBoard(BoardVO bv);
	
}
