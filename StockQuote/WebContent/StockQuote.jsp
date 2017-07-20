<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Hashtable"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stock Quotes</title>
<link rel="stylesheet" type="text/css" href="/StockQuote.css">
</head>
<body>
	<h1>StockQuotes</h1>
	<h2>Courtesy of DFW Cloud Solutions</h2>
	<h2>
		Stock Quotes from <a href="http://finance.yahoo.com/">Yahoo!
			Finance</a>
	</h2>
	<form action='/GetQuote' method='post'>
		<table border="2">
			<tr>
				<td>Stock Symbol</td>
				<td><input type="text" name="stock"></td>
				<td><input type="submit" name="go" value="Quote"></td>
			</tr>
		</table>
	</form>
	<p>
	<hr>
	<%
		Hashtable<String, String> info = (Hashtable<String, String>) getServletContext()
				.getAttribute("quote");
		if (info != null)
		{
	%>
	<p>
	<table border="2" id="results">
		<tr>
			<th>Company</th>
			<th>Quote</th>
			<th>Change</th>
			<th>Date</th>
			<th>Time</th>
			<th>Open</th>
			<th>High</th>
			<th>Low</th>
			<th>Volume</th>
		</tr>
		<tr>
			<td><%=info.get("Company")%></td>
			<td><%=info.get("Quote")%></td>
			<td><%=info.get("Change")%></td>
			<td><%=info.get("Date")%></td>
			<td><%=info.get("Time")%></td>
			<td><%=info.get("Open")%></td>
			<td><%=info.get("High")%></td>
			<td><%=info.get("Low")%></td>
			<td><%=info.get("Volume")%></td>
		</tr>
	</table>
	<%
		}
	%>
	<p>
	The source code for this demo application is available on GitHub (<a href="https://github.com/kjgilhooly/stockquote">here</a>). Please fork and use at your own risk.
	<p>
</body>
</html>