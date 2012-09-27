<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.Menu>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Create a new Menu</h2>
	<script src="/Scripts/cms.menu.create.js" type="text/javascript"></script>
	
	<%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>
	<% using (Html.BeginForm()) {%>
	<fieldset>
		<p>
			<label for="Name">
				Name</label>
			<%= Html.TextBox("Name") %>
			<%= Html.ValidationMessage("Name", "*") %>
		</p>
		<p>
			<label for="Type">
				Layout Type</label>
			<%= Html.RadioButton("Type", 1, true) %>
			Horizontal
			<%= Html.RadioButton("Type", 2) %>
			Vertical
			<%= Html.ValidationMessage("Type", "*") %>
		</p>
		<p>
			<%= Html.CheckBox("ShowAdvanced", false) %> Show Advance Options
		</p>
		<p id="CSS_Advanced">
			<label for="CSS">CSS</label>
			<%= Html.TextArea("CSS", new { cols="140", rows="10" })%>
			<%= Html.ValidationMessage("CSS", "*") %>
		</p>
		<p>
			<input type="submit" value="Create" />
		</p>
	</fieldset>
	<% } %>
	<div>
		<%=Html.ActionLink("Back to List", "Index") %>
	</div>
</asp:Content>
