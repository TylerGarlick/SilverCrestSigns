<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%= Html.CheckBoxList("roles", (List<SelectListItem>)ViewData["Roles"])%>