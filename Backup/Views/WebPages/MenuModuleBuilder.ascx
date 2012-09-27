<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.PageModule>" %>

<div class="modulebuildermenu sortable" id="<%=Model.ModuleId %>">
	<div class="header">
		Menu Module: &nbsp; &nbsp; <%= Html.ActionLink("Delete", "DeleteModule", "Menus", new { id = Model.ModuleId }, null)%>
	</div>
	<div class="modulecontainer"><%= Html.RenderMenu(Model.MenuModule.Menu.Name) %></div>
</div>