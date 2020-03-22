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
