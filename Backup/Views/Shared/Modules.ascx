<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<CMS.Library.Models.PageModule>>" %>

<script src="/Scripts/cms.module.js" type="text/javascript"></script>

<div class="modules">
<% 
	if (ViewData["ShowBuilder"] != null && (bool)ViewData["ShowBuilder"]) {
		Html.RenderPartial("AvailableModules", ViewData);
	}

	foreach (var item in Model.Where(m => m.PageArea.ToLower() == ViewData["ContentArea"].ToString().ToLower()).OrderBy(m => m.Rank)) {
		switch ((ModuleType)item.ModuleType) {
			case ModuleType.TextModule:
				if (ViewData["ShowBuilder"] != null && (bool)ViewData["ShowBuilder"])
					Html.RenderPartial("TextModuleBuilder", item);
				else
					Html.RenderPartial("TextModule", item);
				break;
			case ModuleType.MenuModule:
			if (ViewData["ShowBuilder"] != null && (bool)ViewData["ShowBuilder"])
					Html.RenderPartial("MenuModuleBuilder", item);
				else
					Html.RenderPartial("MenuModule", item);
			break;

			case ModuleType.GalleryModule:
			if (ViewData["ShowBuilder"] != null && (bool)ViewData["ShowBuilder"])
				Html.RenderPartial("GalleryModuleBuilder", item);
			else
				Html.RenderPartial("Gallery", item.GalleryPageModules.Single().Gallery);
			break; 
		}
	}
%>
<%= Html.Hidden("ContentArea", ViewData["ContentArea"]) %>
<%= Html.Hidden("PageId", Model.Count() > 0 ? Model.ElementAt(0).PageId.ToString() : string.Empty) %>
</div>