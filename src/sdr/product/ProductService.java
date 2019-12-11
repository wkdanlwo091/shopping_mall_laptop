package sdr.product;

import java.util.ArrayList;

import javax.annotation.Resource;

import sdr.frame.Dao;
import sdr.frame.Service;
import sdr.vo.ProductVO;

@org.springframework.stereotype.Service("productservice")
public class ProductService implements Service<String, ProductVO> {

	@Resource(name="productdao")
	Dao<String,ProductVO> dao;
	
	@Override
	public void register(ProductVO v) throws Exception {
		dao.insert(v);
	}

	@Override
	public void remove(String k) throws Exception {
		dao.delete(k);
	}

	@Override
	public void modify(ProductVO v) throws Exception {
		dao.update(v);
	}

	@Override
	public ProductVO get(String k) throws Exception {
		return dao.select(k);
	}
	@Override
	public ArrayList<ProductVO> getBrand(String k) throws Exception {
		return dao.selectBrand(k);
	}

	@Override
	public ArrayList<ProductVO> get() throws Exception {
		return dao.select();
	}

}
