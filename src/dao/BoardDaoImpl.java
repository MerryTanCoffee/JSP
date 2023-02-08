package dao;

import java.util.List;

import dto.BoardVO;

public class BoardDaoImpl extends MyBatisDao implements IBoardDao{
	
	// 싱글톤
	private static IBoardDao boardDao;
	
	private BoardDaoImpl() {
		
	}
	
	public static IBoardDao getInstance() {
		if(boardDao == null) {
			boardDao = new BoardDaoImpl();
		}
		return boardDao;
	}

	@Override
	public List<BoardVO> selectBoard() {
		List<BoardVO> boardList = selectList("board.selectBoard");
		return boardList;
	}

	@Override
	public BoardVO getBnum(int bnum) {
	
		return selectOne("board.getBnum", bnum);
	}
	
	@Override
	public int updateBoard(BoardVO bv) {
		return update("board.updateBoard",bv);
	}
}
