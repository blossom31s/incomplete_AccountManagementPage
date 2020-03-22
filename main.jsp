<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>거래처 관리</title>
</head>
<body>
<script>
	function funcCountry(value) {
		document.getElementById("countryEng").value = value;

		if(value == 'KOR') document.getElementById("countryKor").value = "대한민국";
		else if(value == 'USA') document.getElementById("countryKor").value = "미국";
		else if(value == 'CHN') document.getElementById("countryKor").value = "중국";
		else if(value == 'GBR') document.getElementById("countryKor").value = "영국";
		else if(value == 'DEU') document.getElementById("countryKor").value = "독일";
		else if(value == 'FRA') document.getElementById("countryKor").value = "프랑스";
	}
</script>
	<div style="float: left; width: 33%;">
		<div class="modal-title">[실기TEST] 거래처 관리</div>
		<div class="modal-body">
			<div style="border: 1px solid #dddddd">
				<div class="form-group col-sm-8">
					<label>사업자번호</label>
					<input type="text" name="searchBusiNum"><br>
					<label>거래처명</label>
					<input type="text" name="searchCustom">
				</div>
				<div class="form-group col-sm-4">
					<input type="submit" value="조회">
				</div>
			</div>
			<div style="border: 1px solid #dddddd">
				<table class="table">
					<tr>
						<th>사업자 번호</th>
						<th>거래처명</th>
					</tr>
					<tr>
						<th>내용</th>
						<th>내용</th>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<div style="float: left; width: 67%;">
		<div class="modal-title"></div>
		<div class="modal-body">
			<form action="registerAction.jsp" method="post">
				<div class="form-row">
					<input type="submit" class="btn btn-primary pull-right" value="저장">
					<input type="submit" class="btn btn-primary pull-right" value="삭제">
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>사업자번호</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="busiNum" class="form-control" maxlength="12">
					</div>
					<div style="float: left; width: 20%;">
						<label>약칭</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="shortName" class="form-control" maxlength="10">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>거래처명</label>
					</div>
					<div style="float: left; width: 50%;">
						<input type="text" name="custom" class="form-control" maxlength="20">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>대표자</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="ceo" class="form-control" maxlength="10">
					</div>
					<div style="float: left; width: 20%;">
						<label>담당자</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="chargePerson" class="form-control" maxlength="10">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>업태</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="busiCondition" class="form-control" maxlength="10">
					</div>
					<div style="float: left; width: 20%;">
						<label>종목</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="item" class="form-control" maxlength="10">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>우편번호</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="postNum" class="form-control" maxlength="6">
					</div>
					<div style="float: left; width: 20%;">
						<label>주소1</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="addr1" class="form-control" maxlength="20">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>주소2</label>
					</div>
					<div style="float: left; width: 50%;">
						<input type="text" name="addr2" class="form-control" maxlength="20">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>전화번호</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="tel" class="form-control" maxlength="13">
					</div>
					<div style="float: left; width: 20%;">
						<label>팩스번호</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" name="fax" class="form-control" maxlength="13">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>홈페이지</label>
					</div>
					<div style="float: left; width: 50%;">
						<input type="text" name="homepage" class="form-control" maxlength="50">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>법인여부</label>
					</div>
					<div style="float: left; width: 30%;">
						<div style="border: 1px solid #dddddd">
							<input type="radio" id="radioCorporation" name="coYN" onclick="test(this.value)" value="c">
							<label>법인</label>
							<input type="radio" id="radioPersonal" name="coYN" onclick="test(this.value)" value="p">
							<label>개인</label>
						</div>
					</div>
					<div style="float: left; width: 20%;">
						<label>해외여부</label>
					</div>
					<div style="float: left; width: 30%;">
						<div style="border: 1px solid #dddddd">
							<input type="radio" id="radioDomestic" name="foreignYN" value="d">
							<label for="radioDomestic">국내</label>
							<input type="radio" id="radioForeign" name="foreignYN" value="f">
							<label for="radioForeign">해외</label>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>과세구분</label>
					</div>
					<div style="float: left; width: 30%;">
						<select name="taxYN" class="form-control">
							<option value="t" selected>과세/면세</option>
							<option value="n">비과세</option>
						</select>
					</div>
					<div style="float: left; width: 20%;">
						<label>국가</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="text" id="countryEng" name="countryEng" class="form-control" value="">
						<input type="text" id="countryKor" name="countryKor" class="form-control" value="">
						<!-- Button trigger modal -->
						<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#searchModal">
							검색
						</button>
						<!-- Modal -->
						<div class="modal fade" id="searchModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
						  <div class="modal-dialog" role="document">
						    <div class="modal-content">
						      <div class="modal-header">
						        <h5 class="modal-title" id="exampleModalLabel">국가 선택</h5>
						        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
						          <span aria-hidden="true">&times;</span>
						        </button>
						      </div>
						      <div class="modal-body">
						        <div style="border: 1px solid #dddddd">
									<input type="radio" id="KOR" name="country" onclick="funcCountry(this.value)" value="KOR" data-dismiss="modal">
									<label for="KOR">KOR | 한국</label><br>
									<input type="radio" id="USA" name="country" onclick="funcCountry(this.value)" value="USA" data-dismiss="modal">
									<label for="USA">USA | 미국</label><br>
									<input type="radio" id="CHN" name="country" onclick="funcCountry(this.value)" value="CHN" data-dismiss="modal">
									<label for="CHN">CHN | 중국</label><br>
									<input type="radio" id="GBR" name="country" onclick="funcCountry(this.value)" value="GBR" data-dismiss="modal">
									<label for="GBR">GBR | 영국</label><br>
									<input type="radio" id="DEU" name="country" onclick="funcCountry(this.value)" value="DEU" data-dismiss="modal">
									<label for="DEU">DEU | 독일</label><br>
									<input type="radio" id="FRA" name="country" onclick="funcCountry(this.value)" value="FRA" data-dismiss="modal">
									<label for="FRA">FRA | 프랑스</label><br>
								</div>
						      </div>
						      <!-- <div class="modal-footer">
						        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
						        <button type="button" onclick="funcCountry" class="btn btn-primary">선택</button>
						      </div> -->
						    </div>
						  </div>
						</div>
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>특수관계자</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="checkbox" name="specialRelation" value="s">
					</div>
					<div style="float: left; width: 20%;">
						<label>거래중지</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="checkbox" name="tradeStop" value="t">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>계약기간</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="date" name="contractPeriodS" value="2020-03-01">
					</div>
					<div style="float: left; width: 20%;">
						<label>~</label>
					</div>
					<div style="float: left; width: 30%;">
						<input type="date" name="contractPeriodE" value="2020-03-31">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>등록정보</label>
					</div>
					<div style="float: left; width: 10%;">
						<input type="text" name="regiInfoMan">
					</div>
					<div style="float: left; width: 10%;">
						<input type="text" name="regiInfoDate">
					</div>
					<div style="float: left; width: 20%;">
						<label>변경정보</label>
					</div>
					<div style="float: left; width: 10%;">
						<input type="text" name="modiInfoMan">
					</div>
					<div style="float: left; width: 10%;">
						<input type="text" name="modiInfoDate">
					</div>
				</div>
				<div class="form-row">
					<div style="float: left; width: 20%;">
						<label>(거래처 계좌정보)</label>
					</div>
				</div>
				<div class="form-row">
					<table class="table">
						<tr>
							<th>사무소</th>
							<th>은행</th>
							<th>계좌번호</th>
						</tr>
						<tr>
							<th><input type="text" name="factory" class="form-control" maxlength="10"></th>
							<th><input type="text" name="tradeBank" class="form-control" maxlength="10"></th>
							<th><input type="text" name="accountNum" class="form-control" maxlength="20"></th>
						</tr>
					</table>
				</div>
			</form>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
</body>
</html>



<!--
	<nav class="navbar navbar-default">

		<div class="navbar-header">

			<button type="button" class="navbar-toggle collapsed"

				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"

				aria-expanded="false">

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>

				<span class="icon-bar"></span>

			</button>

			<a class="navbar-brand" href="main.jsp">JSP 게시판 웹 사이트</a>

		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

			<ul class="nav navbar-nav">

				<li class="active"><a href="main.jsp">메인</a></li>

				<li><a href="bbs.jsp">게시판</a></li>

			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown">

					<a href="#" class="dropdown-toggle"

						data-toggle="dropdown" role="button" aria-haspopup="true"

						aria-expanded="false">접속하기<span class="caret"></span></a>

					<ul class="dropdown-menu">

						<li><a href="login.jsp">로그인</a></li>

						<li><a href="join.jsp">회원가입</a></li>

					</ul>

				</li>

			</ul>

			<ul class="nav navbar-nav navbar-right">

				<li class="dropdown">

					<a href="#" class="dropdown-toggle"

						data-toggle="dropdown" role="button" aria-haspopup="true"

						aria-expanded="false">회원관리<span class="caret"></span></a>

					<ul class="dropdown-menu">

						<li><a href="logoutAction.jsp">로그아웃</a></li>

					</ul>

				</li>

			</ul>

		</div>

	</nav>

	<div class="container">

		<div class="jumbotron">

			<div class="container">

				<h1>웹 사이트 소개</h1>

				<p>이 웹 사이트는 부트스트랩으로 만든 JSP 웹 사이트입니다. 최소한의 간단한 로직만을 이용해서 개발했습니다.</p>

				<p><a class="btn btn-primary btn-pull" href="#" role="button">자세히 알아보기</a></p>

			</div>

		</div>

	</div>

	<div class="container">

		<div id="myCarousel" class="carousel slide" data-ride="carousel">

			<ol class="carousel-indicators">

				<li data-target="#myCarousel" data-slide-to="0" class="active"></li>

				<li data-target="#myCarousel" data-slide-to="1"></li>

				<li data-target="#myCarousel" data-slide-to="2"></li>

				<li data-target="#myCarousel" data-slide-to="3"></li>

			</ol>

			<div class="carousel-inner">

				<div class="item active">

					<img src="images/1.jpg">

				</div>

				<div class="item">

					<img src="images/2.jpg">

				</div>

				<div class="item">

					<img src="images/3.jpg">

				</div>

				<div class="item">

					<img src="images/4.jpg">

				</div>

			</div>

			<a class="left carousel-control" href="#myCarousel" data-slide="prev">

				<span class="glyphicon glyphicon-chevron-left"></span>

			</a>

			<a class="right carousel-control" href="#myCarousel" data-slide="next">

				<span class="glyphicon glyphicon-chevron-right"></span>

			</a>

		</div>

	</div>
-->
