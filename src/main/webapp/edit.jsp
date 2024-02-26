<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@ include file="all_js_css.jsp"%>

</head>
<body>

	<!-- container fluid new purna block aquire kela jato / padding ani margin 0 kelya mule full screenghetla -->
	<div class="container">
		<%@ include file="navbar.jsp"%>
		<h1>Edit Your Note</h1>




		<%
				int noteId=Integer.parseInt(request.getParameter("note_id").trim());
				Session s=FactoryProvider.getFactory().openSession();
				Note note=s.get(Note.class, noteId);
			%>





		<!-- 		This is add form      -->
		<form action="UpdateServlet" Method="post">

		<input value="<%=note.getId()%>" name="noteId" type="hidden"/>

			<div class="form-group">
				<label for="title">Note Title</label> 
				<input name="title" required
					type="text" class="form-control" id="title"
					aria-describedby="emailHelp" placeholder="Enter Here"
					value=<%=note.getTitle() %>>

			</div>

			<div class="form-group">
				<label for="content">Note Content</label>

				<textarea name="content" required id="content"
					placeholder="Enter Your Content Here." class="form-control"
					style="height: 300px;"><%=note.getContent()%>
				    </textarea>

			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Your Note</button>
			</div>

		</form>

	</div>


	<!-- *****Form Ends***** -->

	</div>





</body>
</html>