package org.zerock.mapper;

import java.util.List;

import org.zerock.domain.BoardVO;

public interface BoardMapper {
	
	//@Select("Select * from tb1_board where bno > 0")
	public List<BoardVO> getList();

}
