<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.MenuItem>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Create a New Menu Item</h2>
	<script src="/Scripts/cms.menuitems.create.js" type="text/javascript"></script>

	<%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>
	<% using (Html.BeginForm()) {%>
	<fieldset>
		<p>
			<label>Link Type</label>
			<%= Html.DropDownList("Type", (List<SelectListItem>)ViewData["LinkTypes"]) %>
		</p>
		<p id="CMSPage">
			<label for="PageId">Page</label>
			<%= Html.DropDownList("PageId", (List<SelectListItem>)ViewData["SetupPages"]) %>
		</p>
		<p id="ExternalUrl">
			<label for="Url">External Url</label>
			<%= Html.TextBox("Url") %>
			<%= Html.ValidationMessage("Url", "*") %>
		</p>
		<% if(ViewData["Modules"] != null ) { %>
		<p id="Modules">
			<label for="Modules">Modules</label>
			<%= Html.DropDownList("Modules", ((List<SelectListItem>)ViewData["Modules"]))%>
			<%= Html.ValidationMessage("Url", "*") %>
		</p>
		<% } %>
		<p>
			<label for="Name">
				Link Label</label>
			<%= Html.TextBox("Name") %>
			<%= Html.ValidationMessage("Name", "*") %>
		</p>
		<p>
			<%= Html.CheckBox("Advanced", false)  %> Show Advanced Options
		</p>
		<p id="CSS_Advanced">
			<label for="CSSClass">
				CSS Class Name</label>
			<%= Html.TextBox("CSSClass") %>
			<%= Html.ValidationMessage("CSSClass", "*") %>
		</p>
		<p>
			<%-- <%= Html.Hidden("PageId", Model.PageId) %> --%>
			<% if (Request["ParentId"] != null) { %>
			<%= Html.Hidden("ParentId", Request["ParentId"])%>
			<% } %>
			
			<%= Html.Hidden("menuId", Request["menudId"]) %>
			<input type="submit" value="Create" />
		</p>
	</fieldset>
	<% } %>
	<div>
		<%=Html.ActionLink("Back to List", "Index", new {menuId = Request["menuId"] ?? string.Empty })%>
	</div>
</asp:Content>
