<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CMS.Library.Models.MenuItem>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Menu > View Menu Items
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<script src="/Scripts/cms.menuitems.index.js" type="text/javascript"></script>
	<h2>
		<%if (ViewData["BreadCrumb"] != null) { %>
			<%= ViewData["BreadCrumb"] %>
		<% } else  { %>
			<%= ViewData["MenuName"] %>
		<% } %>
	</h2>
	<p>
		<%= Html.ActionLink("Create New Menu Item", "Create", new { menuId = ViewData["MenuId"], parentId = Request["parentMenuId"] })%>
	</p>
	<p style="margin-top: 5px;">Hint:  To re-order the menu items.  Simply drag and drop the rows, your actions will be saved!</p>
	<% if (Model.Count() > 0) { %>
	<table class="grid sortable" style="margin-top: 15px;">
		<tr class="header">
			<th></th>
			<th>Name</th>
			<th>Url</th>
			<th></th>
		</tr>
		<% foreach (var item in Model) { %>
			<tr class="sort" id="<%= item.Id %>">
				<td><%= Html.ActionLink("Edit", "Edit", new { id = item.Id, menuId = item.MenuId, parentId = Request["parentMenuId"] })%> | <%= Html.ActionLink("Delete", "Delete", new { id = item.Id, menuId = item.MenuId })%></td>
				<td><%= item.Name%></td>
				<td>
					<% if (item.PageId.HasValue) { %>
						<a href='<%= "/Pages/" + item.WebPage.Url  %>' target="_blank"><%= "/Pages/" + item.WebPage.Url  %></a>
					<% } else { %>
						<a href="<%= item.Url %>" target="_blank"><%=item.Url%></a>
					<% } %>
				</td>
				<td><%= Html.ActionLink("Sub-Menu Items >", "Index", new {menuId = item.MenuId, parentMenuId = item.Id}) %></td>
			</tr>
		<% } %>
	</table>
	<div style="clear: both;">
		<% if (Request["parentMenuId"] != null) { %>
		<% var parentMenu = ((CMS.Library.Models.Menu)ViewData["Menu"]).MenuItems.FirstOrDefault(m => m.Id == int.Parse(Request["parentMenuId"])); %>
		<%= Html.ActionLink("< Back", "Index", new { menuId = parentMenu.MenuId, parentMenuId = parentMenu.ParentId})%>
	</div>
	<% } %>
	<% } else { %>
	<p style="margin-top: 15px;">
		You haven't created any menu items. Please
		<%= Html.ActionLink("Create New Menu Item", "Create", new { menuId = ViewData["MenuId"], parentId = Request["parentMenuId"] })%>
	</p>
	<% } %>
	<%=Html.Hidden("MenuId", Request["menuId"]) %>
	<%=Html.Hidden("ParentId", Request["parentMenuId"])%>
</asp:Content>
