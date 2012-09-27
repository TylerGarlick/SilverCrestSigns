<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<% if(Request["commentMessage"] != null) { %>
	<%= new SystemMessage(Request["commentMessage"], (MessageType)int.Parse(Request["messageType"])).ToString()%>
<% } %>