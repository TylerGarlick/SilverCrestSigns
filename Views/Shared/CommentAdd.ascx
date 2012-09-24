<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<% if (((CMS.Library.Models.WebsiteSetting)ViewData["Settings"]).Comments_AllowAnonymous) { %>
	<% if (Membership.GetUser() != null) { %>
		<% Html.RenderPartial("CommentAddForm"); %>
	<% } else {%>
		<div>This site requires users to be authenticated to comment.  Please <%= Html.ActionLink("login", "LogOn", "Account") %> to comment.</div>
	<% } %>
<% } else {%>
	<% Html.RenderPartial("CommentAddForm"); %>
<% } %>