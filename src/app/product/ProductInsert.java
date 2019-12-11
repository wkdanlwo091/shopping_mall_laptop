package app.product;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

import sdr.frame.Service;
import sdr.vo.ProductVO;

public class ProductInsert {

	public static void main(String[] args) {
		
		AbstractApplicationContext factory = new GenericXmlApplicationContext("spring.xml");

		Service service = (Service) factory.getBean("productservice");
		
		ProductVO product = new ProductVO("test","SAMSUNG",2211000,"i7","16GB","256GB","14","test.jpg",50);

		try {
			service.register(product);
			System.out.println("register ok");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	factory.close();	

	}

}
