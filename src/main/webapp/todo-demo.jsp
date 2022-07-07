<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
   	%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>To-Do List</title>
</head>

<body>
<!-- 1. create html form -->
<form action="todo-demo.jsp">
	Add new item: <input type="text" name="theItem" />
	<input type="submit" value="Submit">		
</form>

<!-- add new item to "To Do" list -->
<%
	//get to-do items from the session
	List<String> items = (List<String>) session.getAttribute("myToDoList");
	
	//if the TO DO items does not exist, then create a new one
	if(items == null){
		items = new ArrayList<String>();
		session.setAttribute("myToDoList", items);
	}
	//see if there is form data to add
	String theItem = request.getParameter("theItem");
	if(theItem != null && !theItem.isBlank()){
		items.add(theItem);
	}
%>

<!-- display all to-do items in the session -->
<hr>
<b>To-do list Items:</b> </br>
<ol>
<%
	for (String temp : items){
		out.println("<li>" + temp + "</li>");
	}
%>
</ol>

</body>

</html>