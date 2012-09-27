<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebPage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Security
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Security for Page:  <%= Model.Name%></h2>
	<p>Please select from the groups below to restrict access to this page.  If you select no groups, everyone will have access to this page (default behavior).</p>
	<%using (Html.BeginForm()) { %>
	<fieldset>
		<p>
			<label>Groups</label>
			<ul>
			<% foreach (var item in (string[])ViewData["Roles"]) { %>
				<li><%= Html.CheckBox("Roles", Model.WebpageSecurities.Any(n => n.Role.ToLower() == item.ToLower()), new { value=item }) %> <%= item %></li>
			<% } %>
			</ul>
		</p>
		<p>
			<input type="submit" value="Update" />
		</p>	
	</fieldset>
	<% } %>
</asp:Content>
