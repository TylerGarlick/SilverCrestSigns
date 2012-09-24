<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.MenuItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Delete the Menu Item:  <%= Model.Name%></h2>
    
    <% using (Html.BeginForm()) { %>
    <fieldset>
		<p>Are you sure you want to delete the menu item <b><%= Model.Name%></b>?</p>
		<p>
			<%= Html.Hidden("id", Model.Id) %>
			<%= Html.Hidden("menuId", Model.MenuId) %>
			<input type="submit" value="Delete" />
		</p>
    </fieldset>
	<% } %>
	<p>
		<%=Html.ActionLink("Back to List", "Index", new {menuId = Request["menuId"] ?? string.Empty })%> 
	</p>
</asp:Content>
