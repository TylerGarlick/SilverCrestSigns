<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.PageModule>" %>

<div class="modulebuildermenu sortable" id="<%=Model.ModuleId %>">
	<div class="header">
		Photo Gallery Module: &nbsp; &nbsp; <%= Html.ActionLink("Delete", "DeleteModule", "Galleries", new { id = Model.ModuleId }, null)%>
	</div>
	<div class="modulecontainer"><% Html.RenderPartial("Gallery", Model.GalleryPageModules.Single().Gallery); %></div>
</div>