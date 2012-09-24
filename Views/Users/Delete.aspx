<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Delete</h2>
	<%= Html.ValidationSummary("User deletion was unsuccessful. Please correct the errors and try again.") %>
	 <% using (Html.BeginForm()) { %>
	 <div>
		<fieldset>
			<legend>Delete User</legend>
			<p>
				Are you sure you want to delete <b><%= ViewData["Username"]%></b>?
			</p>
			<p>
				<%= Html.Hidden("username", ViewData["Username"])%>
				<input type="submit" value="Delete" /> | <%= Html.ActionLink("Cancel", "Index") %>
			</p>
		</fieldset>
	</div>
	<% } %>
</asp:Content>
