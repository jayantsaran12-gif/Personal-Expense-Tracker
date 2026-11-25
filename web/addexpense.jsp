<%-- 
    Document   : addexpense
    Created on : 20-Nov-2026, 4:15:53 pm
    Author     : Ravindra Ji
--%>


<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    String name = request.getParameter("expenseName");
    String category = request.getParameter("category");
    String amount = request.getParameter("amount");

    ArrayList<String[]> expenses =
        (ArrayList<String[]>)session.getAttribute("expenses");

    if(expenses == null)
    {
        expenses = new ArrayList<String[]>();
    }

    String data[] = {name, category, amount};

    expenses.add(data);

    session.setAttribute("expenses", expenses);
%>

<!DOCTYPE html>
<html>
<head>
    <title>Expense Added</title>
</head>
<body>

    <h1>Personal Expense Tracker</h1>

    <h2>Expense Added Successfully!</h2>

    <p>Expense Name: <%=name%></p>

    <p>Category: <%=category%></p>

    <p>Amount: Rs. <%=amount%></p>

    <br>

    <a href="index.jsp">Add Another Expense</a>

    <br><br>

    <a href="viewExpense.jsp">View All Expenses</a>

</body>
</html>
