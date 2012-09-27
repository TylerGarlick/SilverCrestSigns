<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Control Panel > Delete Group
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Delete</h2>
	<%= Html.ValidationSummary("Role deletion was unsuccessful. Please correct the errors and try again.") %>
	
	 <% using (Html.BeginForm()) { %>
	 <div>
		<fieldset>
			<legend>Delete Role</legend>
			<p>
				Are you sure you want to delete <b><%= ViewData["Name"] %></b>?
			</p>
			<p>
				<%= Html.Hidden("name", ViewData["Name"])%>
				<input type="submit" value="Delete" /> | <%= Html.ActionLink("Cancel", "Index") %>
			</p>
		</fieldset>
	</div>
	<% } %>
</asp:Content>
