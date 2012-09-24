<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<string>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Control Panel > New Groups
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Groups</h2>
	<p>
		<%= Html.ActionLink("New Group", "Create") %>
	</p>
	<% using (Html.BeginForm()) { %>
		<div class="search">
			<span><%= Html.TextBox("search", Request["search"] != null? Request["search"] : string.Empty) %></span>
			<span><input type="submit" value="Search" /></span>
		</div>
	<% } %>
	<table class="grid">
		<tr class="header">
			<th>Group Name</th>
			<th></th>
		</tr>
	<% foreach (var role in Model) { %>
		<tr>
			<td><%= role %></td>
			<td>
				<% if (!role.Equals("Administrator") && !role.Equals("User")) { %>
					<%= Html.ActionLink("Delete", "Delete", "Groups", new { id = role }, null)%>
				<% } %>
			</td> 
		</tr> 
	<% } %>
	</table>
</asp:Content>
