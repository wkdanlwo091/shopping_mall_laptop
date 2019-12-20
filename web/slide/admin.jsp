<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title  -->
<title>Laptop Docter</title>

<!-- Favicon  -->
<link rel="icon" href="img/core-img/favicon.ico">

<!-- Core Style CSS -->
<link rel="stylesheet" href="css/core-style.css">
<link rel="stylesheet" href="style.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>


<!-- 슬라이드 -->
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<link rel="stylesheet" href="slide/css/bootstrap.min.css">

<!-- Font Awesome -->
<link rel="stylesheet" href="slide/css/font-awesome.min.css">

<!-- Custom CSS -->
<link rel="stylesheet" href="slide/css/owl.carousel.css">
<link rel="stylesheet" href="slide/style.css">
<link rel="stylesheet" href="slide/css/responsive.css">





<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet"
	href="css_productdetail/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet"
	href="css_productdetail/slick.css" />
<link type="text/css" rel="stylesheet"
	href="css_productdetail/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet"
	href="css_productdetail/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css_productdetail/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet"
	href="css_productdetail/style.css" />

<!--  data toggle css start -->

<link rel="icon" type="image/png" href="images_board/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="vendor_board/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts_board/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor_board/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="vendor_board/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="vendor_board/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css" href="css_board/util.css">
<link rel="stylesheet" type="text/css" href="css_board/main.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<!--  data toggle css end -->


<style>
#container {
	margin: 0 auto;
	width: 80%;
	height: 600px;
	border: 2px solid black;
}
</style>

<script>


board_userid_List = new Array();
board_prodname_List = new Array();
board_bcontent_List = new Array();
board_btype_List = new Array();
board_bstar_List = new Array();
test = 'aaaaaaaaaaaaaaaaaaaa'

	function display(data) {

		var Month_Data_List = new Array();
		var Price_Data_List = new Array();
		var price = Array.apply(null, new Array(12)).map(Number.prototype.valueOf, 0);

		$(data).each(function(idx, item) {

			switch (item.Month) {
			case 1:
				price[0] += item.price;
				break;
			case 2:
				price[1] += item.price;
				break;
			case 3:
				price[2] += item.price;
				break;
			case 4:
				price[3] += item.price;
				break;
			case 5:
				price[4] += item.price;
				break;
			case 6:
				price[5] += item.price;
				break;
			case 7:
				price[6] += item.price;
				break;
			case 8:
				price[7] += item.price;
				break;
			case 9:
				price[8] += item.price;
				break;
			case 10:
				price[9] += item.price;
				break;
			case 11:
				price[10] += item.price;
				break;
			case 12:
				price[11] += item.price;
				break;
			default:
			}

		});

		var data = [ {
			name : 'SDR LAPTOPDOC',
			data : [ price[0], price[1], price[2], price[3], price[4],
					price[5], price[6], price[7], price[8], price[9],
					price[10], price[11] ]
		} ];

		Highcharts.chart('container', {
			chart : {
				type : 'line'
			},

			title : {
				text : 'LAPTOPDOC'
			},

			subtitle : {
				text : '총 판매량'
			},

			xAxis : {
				categories : [ 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul',
						'Aug', 'Sep', 'Oct', 'Nov', 'Dec' ]
			},

			yAxis : {
				min : 0,
				title : {
					text : '판매액'
				},
				labels : {
					enabled : true,
					formatter : function() {
						return parseInt((this.value * this.value) + 1);
					}
				}
			},

			plotOptions : {
				line : {
					dataLabels : {
						enabled : true
					},
					enableMouseTracking : false
				}
			},
			series : data
		});
	}

	function getData() {
		$.ajax({
			url : 'getdata.mc',
			success : function(data) {
				console.log(data);
				display(data);
			},
			error : function() {
				alert("fail");
			}
		})
	};

	function board(data) {
		console.log("들옴?");
		var result='';
		$(data).each(function(idx, item) {
			//board_bcontent_List[idx] = item.bcontent;
			//console.log(board_bcontent_List[idx]);

		result += '<td class="cell100 column1">';
		result += item.bcontent;
		result += '</td>';
		result += '<td class="cell100 column1">';
		result += item.userid;
		result += '</td>';
		result += '<td class="cell100 column1">';
		result += item.bdate;
		result += '</td>';
		result += '<td class="cell100 column1">';
		result += item.bstar;
		result += '</td>';
	
		});
		
		$('.row100.body').html(result);
		
	};

	function BoardData() {
		$.ajax({
			url : 'boarddata.mc',
			success : function(data) {
				console.log(data);
				board(data);
			},
			error : function() {
				alert("fail");
			}
		})
	};

	$(document).ready(function() {
		getData();
		BoardData();

	});
</script>


</head>

<script type="text/javascript"></script>


<body>
	<!-- ##### Header Area Start ##### -->
	<header class="header_area">
		<div
			class="classy-nav-container breakpoint-off d-flex align-items-center justify-content-between">
			<!-- Classy Menu -->
			<nav class="classy-navbar" id="essenceNav">
				<!-- Logo -->
				<a class="nav-brand" href="index.html"><img
					src="img/core-img/laptopdoc.png" alt=""></a>
				<!-- Navbar Toggler -->
				<div class="classy-navbar-toggler">
					<span class="navbarToggler"><span></span><span></span><span></span></span>
				</div>
				<!-- Menu -->
				<div class="classy-menu">
					<!-- close btn -->
					<div class="classycloseIcon">
						<div class="cross-wrap">
							<span class="top"></span><span class="bottom"></span>
						</div>
					</div>
					<!-- Nav Start -->

					<!-- Nav End -->
				</div>
			</nav>

			<!-- Header Meta Data -->
			<div class="header-meta d-flex clearfix justify-content-end">
				<div class="search-area">
					<form action="getSearch.mc" method="post">
						<input type="search" name="search" id="headerSearch"
							placeholder="Laptop Name">
						<button type="submit">
							<i class="fa fa-search" aria-hidden="true"></i>
						</button>
					</form>
				</div>

				<div class="user-login-info">
					<a href="#">관리자<img src="img/core-img/user.svg" alt=""
						style="max-width: 40px !important"></a>
				</div>


				<!-- Search Area -->
				<!-- Favourite Area -->
			</div>

		</div>
	</header>
	<!-- ##### Header Area End ##### -->
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>


	<div class="slider-area">
		<!-- Slider -->
		<div class="block-slider block-slider4">
			<ul class="" id="bxslider-home4">
				<li>
					<div class="container h-100">
						<div class="row h-100 align-items-center">
							<div class="col-12">
								<div class="page-title text-center">
									<h2>Monthly Sales Volume</h2>
								</div>
							</div>
						</div>
					</div> <br>
					<div id="container"></div>
				</li>

				<li>




					<div class="container-table100">
						<div class="wrap-table100">
							<!-- 리뷰게시판 기능 만들 영역  -->
							<div id="review_method" style='text-align: left;'>

								<button class="btn btn-success" onclick='ReviewInsert();'>댓글
									관리</button>
								<div id="review_insert"></div>

							</div>
							<!-- 리뷰게시판 기능 만들 영역  -->
							<!-- REVIEW BOARD CRUD END-->
							<div class="table100 ver2 m-b-110">
								<div class="table100-head">
									<table>
										<thead>
											<tr class="row100 head">
												<th class="cell100 column1">내용</th>
												<th class="cell100 column2">작성자</th>
												<th class="cell100 column3">작성시간</th>
												<th class="cell100 column4">카테고리</th>
												<th class="cell100 column_star">평점</th>
												<th class="cell100 column5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

												
												<th>
											</tr>
										</thead>
									</table>
								</div>
								<div class="table100-body js-pscroll">
									<table>
										<tbody>
												<tr class="row100 body">
												
												
												</tr>
							
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>








				</li>
				<li><img src="slide/img/h4-slide4.png" alt="Slide">
					<div class="caption-group">
						<h2 class="caption title">
							Apple <span class="primary">Store <strong>Ipod</strong></span>
						</h2>
						<h4 class="caption subtitle">& Phone</h4>
						<a class="caption button-radius" href="#"><span class="icon"></span>Shop
							now</a>
					</div></li>
			</ul>
		</div>
		<!-- ./Slider -->
	</div>
	<!-- End slider area -->



	<!-- ##### Footer Area End ##### -->

	<!-- jQuery (Necessary for All JavaScript Plugins)  -->
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- Plugins js -->
	<script src="js/plugins.js"></script>
	<!-- Classy Nav js -->
	<script src="js/classy-nav.min.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>

	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="slide/js/owl.carousel.min.js"></script>
	<script src="slide/js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="slide/js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="slide/js/main.js"></script>

	<!-- Slider -->
	<script type="text/javascript" src="slide/js/bxslider.min.js"></script>
	<script type="text/javascript" src="slide/js/script.slider.js"></script>


</body>

</html>