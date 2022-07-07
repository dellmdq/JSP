<%@ page import="java.net.URLEncoder" %>

<html>
<%
	//read form data
	String favLang = request.getParameter("favouriteLanguage");

	favLang = URLEncoder.encode(favLang, "UTF-8");

	//create the cookie
	Cookie theCookie = new Cookie("myApp.favouriteLanguage", favLang);
	
	//set cookie life span, total number of seconds
	theCookie.setMaxAge(60*60*24*365);
	
	//send cookie to browser
	response.addCookie(theCookie);

%>
<body>
	Thanks! You set your favourite language to: ${param.favouriteLanguage }
	
	</br></br>
	
	<a href="cookies-homepage.jsp">Return to homepage</a>
</body>

</html>