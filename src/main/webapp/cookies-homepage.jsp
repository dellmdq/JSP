<%@ page import="java.net.URLDecoder"  	 %>
<html>


<body>
<h3>Training portal</h3>

<!-- read the favourite programming language cookie -->
<%
	//java is default
	String favLang = "Java";
	
	//get the cookies from the browser request
	Cookie[] theCookies = request.getCookies();
	
	//check null
	if(theCookies != null){
		
		for(Cookie tempCookie : theCookies){
	
			if("myApp.favouriteLanguage".equals(tempCookie.getName())){
				favLang = URLDecoder.decode(tempCookie.getValue(), "UTF-8");
				break;
			}
			
		}
	}




%>

<!--  now show a personalized pages based on cookie info -->
<h4>New books for <%= favLang %></h4>

<h4>New IDEs for <%= favLang %></h4>

<h4>New courses for <%= favLang %></h4>

<a href="cookies-custom-form.html">Customize this page</a>
</body>




</html>