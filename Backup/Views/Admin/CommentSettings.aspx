<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebsiteSetting>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Control Panel > Comment Settings
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <h2>Comment Module Settings</h2>
   <% using (Html.BeginForm()) { %>
		<fieldset>
			<p>
				<%= Html.CheckBox("CommentsAllowAnonymous", Model.Comments_AllowAnonymous )%> Allow Anonymous Comments?
			</p>
			<p>
				<%= Html.CheckBox("CommentsRequireValidation", Model.Comments_RequireValidationToComment )%> Require an Administrator to Authorize Comments?
			</p>
			<p>
				<input type="submit" value="Save" /> | <%= Html.ActionLink("Back", "ControlPanel", "Admin") %>
			</p>
		</fieldset>
	<% } %>
</asp:Content>
