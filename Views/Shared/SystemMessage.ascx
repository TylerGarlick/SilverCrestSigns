<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<% if (TempData["Message"] != null) {%>
	<%= ((SystemMessage)TempData["Message"]).ToString()%>
<% } %>

<% if (Request["Message"] != null && Request["MessageType"] != null) { %>
	<%= new SystemMessage(Request["Message"], (MessageType)int.Parse(Request["MessageType"])).ToString() %>
<% } %>