<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Photo Gallery 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Photo Gallery</h2>
	<% using (Html.BeginForm()) { %>
		<fieldset>
			<p>
				<label>Select a Gallery</label>
				<%= Html.DropDownList("galleryId", (List<SelectListItem>)ViewData["Galleries"]) %>
			</p>
			<p>
				<input type="submit" value="Select" />
			</p>
		</fieldset>	 
	<% } %>
</asp:Content>
