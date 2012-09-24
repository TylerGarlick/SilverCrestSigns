<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.Gallery>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Galleries > Delete Gallery
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Delete Photo Gallery:
		<%= Model.Name %></h2>
	
	<fieldset>
	<p>
		Are you sure you want to delete the photo gallery
		<%= Model.Name %>?</p>
		<% using (Html.BeginForm()) { %>
		<p><input type="submit" value="Delete" /></p>
		<% } %>
	</fieldset>
	<p>
		<%=Html.ActionLink("Back to List", "Index") %>
	</p>
</asp:Content>
