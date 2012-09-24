<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Dashboard
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Dashboard</h2>
	
	<table style="margin-top: 25px;">
		<tr>
			<td style="vertical-align: top;">
				<h3>Google Analytics</h3>
				<div><img src="<%= ViewData["analytics"] %>" style="border: 1px solid black; padding: 5px;" alt="Google Analytics" /></div>
			</td>
			<td style="vertical-align: top; padding-left: 15px;">
				<h3>Comments Awaiting Approval</h3>
				<div><% Html.RenderPartial("CommentsAwaitingApproval", ((List<CMS.Library.Models.PageComment>)ViewData["approved"])); %></div>
				<h3 style="margin-top: 15px;">Flagged Comments</h3>
				<div><% Html.RenderPartial("FlaggedComments", ((List<CMS.Library.Models.PageComment>)ViewData["flagged"])); %></div>
			</td>
		</tr>
	</table>
</asp:Content>
