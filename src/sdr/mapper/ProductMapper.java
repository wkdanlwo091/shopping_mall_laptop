package sdr.mapper;

import java.util.ArrayList;

import sdr.vo.ProductVO;

public interface ProductMapper {
	
	public void insert(ProductVO obj);
	public void delete(String obj);
	public void update(ProductVO obj);
	public ProductVO select(String obj);
	public ArrayList<ProductVO> selectBrand(String obj);
	public ArrayList<ProductVO> selectall();

}
