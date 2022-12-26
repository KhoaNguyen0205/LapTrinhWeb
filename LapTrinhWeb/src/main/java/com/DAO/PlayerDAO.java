package com.DAO;

import java.util.List;

import com.entity.PlayerDtls;

public interface PlayerDAO {
	public boolean addPlayers (PlayerDtls b);
	
	public List<PlayerDtls> getAllPlayers();
	
	public List<PlayerDtls> getPlayerBySearch (String ch);

}
