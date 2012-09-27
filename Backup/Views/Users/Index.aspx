<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList<System.Web.Security.MembershipUser>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Users
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Users</h2>
	<p>
		<%= Html.ActionLink("New User", "AdminRegister", "Account") %>
	</p>
	<% using (Html.BeginForm()) { %>
		<div class="search">
			<span><%= Html.TextBox("search", Request["search"] != null? Request["search"] : string.Empty) %></span>
			<span><input type="submit" value="Search" /></span>
		</div>
	<% } %>
	<table class="grid">
		<tr class="header">
			<th>User Name</th>
			<th>Email</th>
			<th>Became Member On</th>
			<th>Approved</th>
			<th>Locked Out</th>
			<th>Roles</th>
			<th></th>
		</tr>
	<% foreach (var user in Model) { %>
		<tr>
			<td><%= user.UserName %></td>
			<td><%= user.Email %></td>
			<td><%= user.CreationDate %></td>
			<td style="text-align: center;"><%= Html.CheckBox("IsApproved", user.IsApproved, new { disabled = "disabled" })%></td>
			<td style="text-align: center;"><%= Html.CheckBox("IsLockedOut", user.IsLockedOut, new { disabled = "disabled" })%></td>
			<td>
			<% var roles = Roles.GetRolesForUser(user.UserName); %>
				<% for (int i = 0; i < roles.Count(); i++) { %>
					<% if (i == roles.Count() - 1) { %>
						<%= roles[i]%>
					<% } else { %>
						<%= roles[i] %>, 
					<%} %>
				<% } %>
			</td>
			<td>
				<% if (user.UserName.ToLower() != "waziadmin") { %>
					<%= Html.ActionLink("Edit", "Edit", new { id = user.UserName })%> | <%= Html.ActionLink("Delete", "Delete", new { id = user.UserName })%>
				<% } %>
			</td>
			
		</tr>		  
	<% } %>
	</table>
	<div class="pager">
		<%= Html.Pager(ViewData.Model.PageSize, ViewData.Model.PageNumber, ViewData.Model.TotalItemCount) %>
	</div>
</asp:Content>
