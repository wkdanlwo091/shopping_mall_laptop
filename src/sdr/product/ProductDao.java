package sdr.product;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import sdr.frame.Dao;
import sdr.mapper.ProductMapper;
import sdr.vo.ProductVO;

@Repository("productdao")
public class ProductDao implements Dao<String, ProductVO> {
	
	@Autowired
	ProductMapper pm;

	@Override
	public void insert(ProductVO v) throws Exception {
		pm.insert(v);
	}

	@Override
	public void delete(String k) throws Exception {
		pm.delete(k);
	}

	@Override
	public void update(ProductVO v) throws Exception {
		pm.update(v);
	}

	@Override
	public ProductVO select(String k) throws Exception {
		return pm.select(k);
	}
	
	@Override
	public ArrayList<ProductVO> selectBrand(String k) throws Exception {
		return pm.selectBrand(k);
	}

	@Override
	public ArrayList<ProductVO> select() throws Exception {
		return pm.selectall();
	}

}
