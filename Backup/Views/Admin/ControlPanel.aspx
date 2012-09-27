<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Control Panel
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Control Panel</h2>
	<div class="modules">
		<h4>Users</h4>
		<div><%= Html.ActionLink("User Management", "Index", "Users") %></div>
		<div><%= Html.ActionLink("Groups Management", "Index", "Groups") %></div>
	</div>
	
	<div class="modules">
		<h4>Contact Us Settings</h4>
		<div><%= Html.ActionLink("Manage Contact Us Settings", "ContactUsSettings", "Admin") %></div>
	</div>
	
	<div class="modules">
		<h4>Comments Settings</h4>
		<div><%= Html.ActionLink("Manage Comment Settings", "CommentSettings", "Admin")%></div>
	</div>
</asp:Content>
