<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Menu
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Add Menu to Page</h2>
	<% using (Html.BeginForm()) { %>
	<fieldset>
		<p>
			<label for="Menu">Menu</label>
			<%= Html.DropDownList("menu", (List<SelectListItem>)ViewData["Menus"]) %>
			<%= Html.ValidationMessage("menu")%>
		</p>
		<p><input type="submit" value="Save" /></p>
	</fieldset>
	<% } %>
</asp:Content>
