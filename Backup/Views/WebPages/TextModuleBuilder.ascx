<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.PageModule>" %>

<div class="modulebuildermenu sortable" id="<%=Model.ModuleId %>">
	<div class="header">
		Text Module: &nbsp; &nbsp; 
		<%= Html.ActionLink("Edit", "Update", "TextModule", new {id=Model.ModuleId}, null) %>
		|
		<%= Html.ActionLink("Delete", "Delete", "TextModule", new {id=Model.ModuleId}, null) %>
	</div>
	<div class="modulecontainer"><%= Server.UrlDecode(Model.TextModule.Html) %></div>
</div>
