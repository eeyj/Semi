package com.kh.board.sell.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import com.kh.board.model.vo.Board;
import com.kh.board.sell.model.dao.SellDao;

import static com.kh.common.JDBCTemplate.*;

public class SellService {
	
	public ArrayList<Board> selectSellList(){
		
		Connection conn = getConnection();
		
		ArrayList<Board> list = new SellDao().selectSellList(conn);
		
		close(conn);
		
		return list;
	}

}
