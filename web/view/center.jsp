<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- 필터에 관한 내용 -->
<script>
	/*
	
		String prodname;
	String brand;
	int price;
	String speccpu;
	String specram;
	String specstorage;
	String specsize;
	String specimg;
	int stock;

	
	 */
	function display(data) {
		alert("display");
		var results = '';
		alert(data);
		$(data).each(function(idx, item) {
							console.log("hahahah");
							var result = '';
							///상품 페이지로 이동한다. 
							result += '<div class="col-lg-4 col-md-6 mb-4"><div class="card h-100">';
							result += '<a href="getProduct.mc?prodname='
									+ item.prodname +'&specimg=' +item.specimg +'&price=' +item.price
									+ '"><img class="card-img-top"';
							result += 'src =img/';
							result += item.specimg +  ' alt = " "></a>'
									+ '<div class="card-body">';
							result += '<h4 class="card-title">';
							result += '<a href="getProduct.mc?prodname='
									+ item.prodname +'&specimg=' +item.specimg +'&price=' +item.price + '">' + item.prodname
									+ '</a>' + '</h4>' + '<h5>' + item.price
									+ '<h5>';
							result += '<p class="card-text">Lorem</p></div><div class="card-footer">'
							result += '<small class="text-muted">&#9733;</small>';
							result += '</div></div></div>'
							results += result;
							console.log(results);
						});
		$('.rows').append(results);
	};

	function getData(value) {
		var data = JSON.stringify(value);
		$.ajax({
			type : "post",
			dataType : 'JSON',
			data : {
				loadProds : 1,
				data1 : data
			},
			url : 'getBrand.mc',
			success : function(data) {
				display(data);
			},
			error : function(request, status, error) {
				alert("code = " + request.status + "\n message = "
						+ request.responseText + " error = " + error); // 실패 시 처리

			}
		});
	};

	function clickButton(value) {
		getData(value);
	}
	$(document).ready(function() {		
		$('#save_value').click(function(){
			var val = [];
			var myObject = {};
			/*여기다가 6개의 조건을 분기해서  javascript 객체 만든 후 json 데이터 만든다. */
	        $(':checkbox:checked').each(function(i){
	            val[i] = $(this).val();

	            alert(i.toString());
	            myObject[i.toString()] = val[i];
	            console.log(myObject[i.toString()]);
	          });
			
			console.log(myObject);
			getData(myObject);
			//////클릭
			//////제품 상세로 넘어가자 
		});
	});
</script>

<!-- ##### New Arrivals Area Start ##### -->
<section class="new_arrivals_area section-padding-80 clearfix">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading text-center">
					<h2>Popular Products</h2>
				</div>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="popular-products-slides owl-carousel">

					<!-- Single Product -->
					<div class="single-product-wrapper">
						<!-- Product Image -->
						<div class="product-img">
							<img src="img/laptop-img/11.jpg" alt="">
							<!-- Hover Thumb -->
							<img class="hover-img" src="img/laptop-img/11.jpg" alt="">
							<!-- Favourite -->
							<div class="product-favourite">
								<a href="#" class="favme fa fa-heart"></a>
							</div>
						</div>
						<!-- Product Description -->
						<div class="product-description">
							<span>topshop</span> <a href="single-product-details.html">
								<h6>Knot Front Mini Dress</h6>
							</a>
							<p class="product-price">$80.00</p>

							<!-- Hover Content -->
							<div class="hover-content">
								<!-- Add to Cart -->
								<div class="add-to-cart-btn">
									<a href="#" class="btn essence-btn">Add to Cart</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Product -->
					<div class="single-product-wrapper">
						<!-- Product Image -->
						<div class="product-img">
							<img src="img/laptop-img/22.jpg" alt="">
							<!-- Hover Thumb -->
							<img class="hover-img" src="img/laptop-img/11.jpg" alt="">
							<!-- Favourite -->
							<div class="product-favourite">
								<a href="#" class="favme fa fa-heart"></a>
							</div>
						</div>
						<!-- Product Description -->
						<div class="product-description">
							<span>topshop</span> <a href="single-product-details.html">
								<h6>Poplin Displaced Wrap Dress</h6>
							</a>
							<p class="product-price">$80.00</p>

							<!-- Hover Content -->
							<div class="hover-content">
								<!-- Add to Cart -->
								<div class="add-to-cart-btn">
									<a href="#" class="btn essence-btn">Add to Cart</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Product -->
					<div class="single-product-wrapper">
						<!-- Product Image -->
						<div class="product-img">
							<img src="img/laptop-img/33.jpg" alt="">
							<!-- Hover Thumb -->
							<img class="hover-img" src="img/laptop-img/11.jpg" alt="">

							<!-- Product Badge -->
							<div class="product-badge offer-badge">
								<span>-30%</span>
							</div>

							<!-- Favourite -->
							<div class="product-favourite">
								<a href="#" class="favme fa fa-heart"></a>
							</div>
						</div>
						<!-- Product Description -->
						<div class="product-description">
							<span>mango</span> <a href="single-product-details.html">
								<h6>PETITE Crepe Wrap Mini Dress</h6>
							</a>
							<p class="product-price">
								<span class="old-price">$75.00</span> $55.00
							</p>

							<!-- Hover Content -->
							<div class="hover-content">
								<!-- Add to Cart -->
								<div class="add-to-cart-btn">
									<a href="#" class="btn essence-btn">Add to Cart</a>
								</div>
							</div>
						</div>
					</div>

					<!-- Single Product -->
					<div class="single-product-wrapper">
						<!-- Product Image -->
						<div class="product-img">
							<img src="img/laptop-img/44.jpg" alt="">
							<!-- Hover Thumb -->
							<img class="hover-img" src="img/laptop-img/11.jpg" alt="">

							<!-- Product Badge -->
							<div class="product-badge new-badge">
								<span>New</span>
							</div>

							<!-- Favourite -->
							<div class="product-favourite">
								<a href="#" class="favme fa fa-heart"></a>
							</div>
						</div>
						<!-- Product Description -->
						<div class="product-description">
							<span>mango</span> <a href="single-product-details.html">
								<h6>PETITE Belted Jumper Dress</h6>
							</a>
							<p class="product-price">$80.00</p>

							<!-- Hover Content -->
							<div class="hover-content">
								<!-- Add to Cart -->
								<div class="add-to-cart-btn">
									<a href="#" class="btn essence-btn">Add to Cart</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- ##### 내가 추가 한 곳  ##### -->
<section class="new_arrivals_area section-padding-80 clearfix">
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="section-heading text-center">
					<h2>필터 결과</h2>
				</div>
			</div>
		</div>
	</div>
	<table class="filter_table" border="1" border-collapse : collapse>
		<tr>
			<td class="table_first">제조사</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox1" name="selector[]"
						value="SAMSUNG"   /> 삼성</li>
					<li><input type="checkbox" id="ad_Checkbox1" name="selector[]"
						value="LG"   /> LG</li>
					<li><input type="checkbox" id="ad_Checkbox1" name="selector[]"
						value="HP"  /> HP</li>
					<li><input type="checkbox" id="ad_Checkbox1" name="selector[]"
						value="DELL" /> 델</li>
					<li><input type="checkbox" id="ad_Checkbox1" name="selector[]"
						value="ASUS"  /> ASUS</li>
				</ul>
			</td>
		</tr>
		<tr>
			<td class="table_first">가격</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox2" name="selector[]"
						value="500000"  /> 50이하</li>
					<li><input type="checkbox" id="ad_Checkbox2" name="selector[]"
						value="1000000"   /> 100이하</li>
					<li><input type="checkbox" id="ad_Checkbox2" name="selector[]"
						value="1500000"  /> 150이하</li>
					<li><input type="checkbox" id="ad_Checkbox2" name="selector[]"
						value="2000000"   /> 200이하</li>
					<li><input type="checkbox" id="ad_Checkbox2" name="selector[]"
						value="2500000"  /> 200 이상</li>
				</ul>
			</td>
		</tr>

		<tr>
			<td class="table_first">CPU</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox3" name="selector[]"
						value="I3"  /> I3</li>
					<li><input type="checkbox" id="ad_Checkbox3" name="selector[]"
						value="I5"   /> I5</li>
					<li><input type="checkbox" id="ad_Checkbox3" name="selector[]"
						value="라이젠5"   /> 라이젠5</li>
					<li><input type="checkbox" id="ad_Checkbox3" name="selector[]"
						value="I7"   />I7</li>
					<li><input type="checkbox" id="ad_Checkbox3" name="selector[]"
						value="I9"  /> I9</li>
				</ul>
			</td>

		</tr>
		<tr>
			<td class="table_first">메모리</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox4" name="selector[]"
						value="4GB"  /> 4GB</li>
					<li><input type="checkbox" id="ad_Checkbox4" name="selector[]"
						value="8GB"  /> 8GB</li>
					<li><input type="checkbox" id="ad_Checkbox4" name="selector[]"
						value="16GB"  /> 16GB</li>
				</ul>
			</td>

		</tr>
		<tr>
			<td class="table_first">하드 디스크</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox5" name="selector[]"
						value="128GB"  />128GB</li>
					<li><input type="checkbox" id="ad_Checkbox5" name="selector[]"
						value="256GB"   /> 256GB</li>
					<li><input type="checkbox" id="ad_Checkbox5" name="selector[]"
						value="512GB"  /> 512GB</li>
					<li><input type="checkbox" id="ad_Checkbox5" name="selector[]"
						value="1TB"   /> 1TB</li>
				</ul>
			</td>

		</tr>
		<tr>
			<td class="table_first">모니터 크기</td>
			<td class="table_second">
				<ul>
					<li><input type="checkbox" id="ad_Checkbox6" name="selector[]"
						value="13.3" />13.3</li>
					<li><input type="checkbox" id="ad_Checkbox6" name="selector[]"
						value="14" /> 14</li>
					<li><input type="checkbox" id="ad_Checkbox6" name="selector[]"
						value="15.6"  /> 15.6</li>	
					<li><input type="checkbox" id="ad_Checkbox6" name="selector[]"
						value="17"  /> 17</li>
				</ul>
			</td>
		</tr>

	</table>
		<div style="text-align:center;"><!-- 버튼 구역 -->
			<br>
			<input type="button" id="save_value" name="save_value" value="제출"  class="btn btn-outline-primary btn-lg"/>
			<input type="button" id="save_value" name="save_value" value="리셋"  class="btn btn-outline-primary btn-lg"/>
			<input type="button" id="save_value" name="save_value" value="가격 순 "  class="btn btn-outline-primary btn-lg"/>
			<input type="button" id="save_value" name="save_value" value="최신 순"  class="btn btn-outline-primary btn-lg"/>
		</div>
	<br> <br>
	
	<div class="rows"></div>