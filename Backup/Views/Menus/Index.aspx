<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CMS.Library.Models.Menu>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Menus
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Menus</h2>
	<p>
		<%= Html.ActionLink("Create New", "Create") %>
	</p>
	<table class="grid" style="margin-top: 15px;">
		<tr class="header">
			<th>
			</th>
			<th>
				Name
			</th>
			<th>
				Layout Type
			</th>
			<th>
			</th>
		</tr>
		<% foreach (var item in Model) { %>
		<tr>
			<td>
				<%if (item.Name != "Main Menu") { %>
				<%= Html.ActionLink("Edit", "Edit", new { id = item.Id })%> | <%= Html.ActionLink("Delete", "Delete", new { id = item.Id })%>
				<% }  %>
			</td>
			<td>
				<%= Html.Encode(item.Name) %>
			</td>
			<td>
				<%= Html.Encode(item.Type == (short)CMS.Library.MenuType.Horizontal ? "Horizontal" : "Vertical") %>
			</td>
			<td>
				<%= Html.ActionLink("View Menu Items >", "Index", "MenuItems", new {menuId= item.Id }, null) %>
			</td>
		</tr>
		<% } %>
	</table>
</asp:Content>
