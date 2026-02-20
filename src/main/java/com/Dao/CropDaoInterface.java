package com.Dao;

import java.util.List;

import com.model.Buy;
import com.model.Crops;

public interface CropDaoInterface {
  public String addcrops(Crops c);
  

  List<Crops> getCropsByFarmer(int farmerId);
	  
 public String buycrop(Buy b,Crops c);

}
