<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Modules</h2>
	<div class="modules" style="margin-top: 25px;">
		<h4>Navigation Module</h4>
		<div><%= Html.ActionLink("Manage Menus", "Index", "Menus") %></div>
	</div>
	<div class="modules" style="margin-top: 25px;">
		<h4>Gallery Module</h4>
		<div><%= Html.ActionLink("Manage Photo Galleries", "Index", "Galleries") %></div>
	</div>
</asp:Content>
