# spring_shopping_mall

# 쇼핑몰 구현

만든이 :  장민재 본인 

***

개발 History

---

사용언어 및 프레임 워크

Spring, MyBatis, AJAX, HTML, CSS, Javascript, AJAX, Oracle database, bootstrap

---

개발기록

1.  목표

   * 필터링 기능이 구현된 쇼핑몰 만들기 ( i.e. 다나와 ) 

   * 웹과 모바일 두 환경에서 작동하는 반응형 웹 만들기

   * AJAX 통신을 이용하여 페이지를 새로고침 하지 않아도 데이터 화면에 refresh 해주기 

   * 카트 기능 구현하기

   * MyBatis로 디비 구현하기 

   * 주문상세 페이지 구현하기

   * 제품 정렬, 페이지네이션 구현하기

   * 아이디 로그인 기능 구현

   * 댓글, Q&A 기능 구현 

   * 관리자 기능으로 파일 변경, 제품 올리기 기능, Q&A 답글 달기 기능

     

2.  데이터베이스 테이블 구현

   * Board, User, Product, Order, Orderdetail, Cart 

   * 오라클 사용, MyBatis에서 dynamic SQL 사용

   * 정렬은 최대한 데이터베이스에서 처리하려고 노력하였다.

   * 정렬을 서버에서 하면 모든 데이터를 데이터베이스에서 불러와서

   * 정렬을 해야 하므로 비효율 적이기 때문에 

     

     

3. 백엔드 구현 
   * 스프링 프레임워크 
   * 

4. 프런트 앤드 구현 
   
   * jQuery, Bootstrap, high-chart 

ScreenShot

---



<img width="158" alt="main_page" src="https://user-images.githubusercontent.com/12855243/71303102-83010d80-23f7-11ea-8d65-4bc419f3f2d5.PNG">

<img width="200" alt="sort_by_range_by_date_price" src="https://user-images.githubusercontent.com/12855243/71303104-8399a400-23f7-11ea-8a53-8f2c6dd8b673.PNG">

<img width="156" alt="filter_page" src="https://user-images.githubusercontent.com/12855243/71303100-83010d80-23f7-11ea-9233-e948d16a2d80.PNG">

<img width="449" alt="cart" src="https://user-images.githubusercontent.com/12855243/71303097-82687700-23f7-11ea-9a89-1cec9628432b.PNG">

<img width="427" alt="check_cart_page" src="https://user-images.githubusercontent.com/12855243/71303098-82687700-23f7-11ea-9b1f-4d57315c2e33.PNG">
<img width="223" alt="checkout_page" src="https://user-images.githubusercontent.com/12855243/71303099-83010d80-23f7-11ea-8c45-705e637c1e42.PNG">

<img width="899" alt="q a" src="https://user-images.githubusercontent.com/12855243/71303103-83010d80-23f7-11ea-8a88-3172195152e6.PNG">

<img width="508" alt="admin_page" src="https://user-images.githubusercontent.com/12855243/71303096-82687700-23f7-11ea-9004-38420b75b2d2.PNG">