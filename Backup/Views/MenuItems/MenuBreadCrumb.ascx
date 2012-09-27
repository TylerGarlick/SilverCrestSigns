<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<% 
	var parentmenu = ((CMS.Library.Models.Menu)ViewData["Menu"]).MenuItems.FirstOrDefault(m => m.Id == int.Parse(Request["parentMenuId"]));
	string link = string.Empty;
%>
<% while (parentmenu.ParentId != null ) { %>
	
<% } %>