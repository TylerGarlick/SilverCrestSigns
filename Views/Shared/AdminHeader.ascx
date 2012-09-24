<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div class="admin-header">
	<ul>
		<% if(Roles.IsUserInRole("Administrator")) { %>
			<li style="margin-left: 10px;"><%= Html.ActionLink("Dashboard", "Index", "Admin") %></li>
			<li><%= Html.ActionLink("Pages", "Index", "WebPages") %></li>
			<li><%= Html.ActionLink("Modules", "Index", "Modules")%></li>
			<li><%= Html.ActionLink("Control Panel", "ControlPanel", "Admin")%></li>
		<% } %>
		<li><%= Html.ActionLink("View Site >", "Index", "Home", null, new { target="_blank" })%></li>
	</ul>
	<% if (Membership.GetUser() != null) { %> 
	<div style="float: right; margin-top: 10px; margin-right: 5px;">Logged in as:  <%= Membership.GetUser().UserName%> | <%= Html.ActionLink("Logout", "LogOff", "Account")%></div>
	<% } %>
</div>