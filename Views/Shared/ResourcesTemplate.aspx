<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/ResourcesTemplate.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebPage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<title><%= Model.Title %></title>
	<META NAME="Description" CONTENT="<%= Model.Description %>">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<% ViewData["ContentArea"] = "MainContent";%>
	<% Html.RenderPartial("Modules", Model.PageModules, ViewData); %>
	
	<%--Comment Module--%>
	<% if (Model.AllowComments) { %>
		<div class="comments"><% Html.RenderPartial("Comments", Model.PageComments.Where(c => c.IsApproved && !c.IsFlagged && c.Active).OrderBy(c => c.PostedDate)); %></div>
		<div class="addcomment"><% Html.RenderPartial("CommentAdd"); %></div>
	<% } %>
</asp:Content>
