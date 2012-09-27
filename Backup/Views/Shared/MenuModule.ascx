<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.PageModule>" %>
<div class="nav">
	<%= Html.RenderMenu(Model.MenuModule.Menu.Name) %>
</div>