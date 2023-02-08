package dao;

import java.util.List;

import dto.BoardVO;

public interface IBoardDao {
	
	public List<BoardVO> selectBoard();
	
	public BoardVO getBnum(int bnum);

	public int updateBoard(BoardVO bv);
	
	}
