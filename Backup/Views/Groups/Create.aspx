<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Control Panel > New Group
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>New Group</h2>
	<p>
		Use form below to create a new Group.
	</p>
	<%= Html.ValidationSummary("Group creation was unsuccessful. Please correct the errors and try again.") %>
	
	 <% using (Html.BeginForm()) { %>
	 <div>
		<fieldset>
			<legend>New Group</legend>
			<p>
				<label for="Name">Name</label>
				<%= Html.TextBox("name")%>
				<%= Html.ValidationMessage("name")%>
			</p>
			<p>
				<input type="submit" value="Create" />
			</p>
		</fieldset>
	</div>
	<% } %>
</asp:Content>
