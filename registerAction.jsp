<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="custom.CustomDAO" %>
<%@ page import="account.AccountDAO" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="custom" class="custom.CustomDTO" scope="page" />
<jsp:useBean id="account" class="account.AccountDTO" scope="page" />
<jsp:setProperty name="custom" property="*" />
<jsp:setProperty name="account" property="*" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>거래처 관리</title>
</head>
<body>
<%
	CustomDAO customDAO = new CustomDAO();
	AccountDAO accountDAO = new AccountDAO();
	int resultCustom = customDAO.register(custom);
	int resultAccount = accountDAO.register(account);

	System.out.println("result : " + resultCustom);
	System.out.println("custom_busiNum : " + custom.getBusiNum());
	System.out.println("custom : " + custom.getCustom());
	System.out.println("shortName : " + custom.getShortName());
	System.out.println("coYN : " + custom.getCoYN());
	System.out.println("countryEng : " + custom.getCountryEng());
	System.out.println("regiInfoDate : " + custom.getRegiInfoDate());
	System.out.println("account_busiNum : " + account.getBusiNum());
	System.out.println("factory : " + account.getFactory());

	String isRegistered = null;
	isRegistered = (String)session.getAttribute("busiNum");

	if(custom.getBusiNum() == null || custom.getCustom() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('입력이 안 된 사항이 있습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	} else if(customDAO.isRegistered(isRegistered)) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 등록된 사업자번호입니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	} else if(resultCustom == -1 || resultAccount == -1) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('거래처 등록에 실패했습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");;
	} else {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('거래처를 등록했습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
%>
</body>
</html>
