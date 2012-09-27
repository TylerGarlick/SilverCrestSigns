<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.PageModule>" %>
<div>
	<%= Server.UrlDecode(Model.TextModule.Html) %>
</div>