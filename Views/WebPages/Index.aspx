<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CMS.Library.Models.WebPage>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Pages
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>
		Pages</h2>
	<p>
		<%= Html.ActionLink("Create New Page", "Create")%>
	</p>
	<table class="grid" style="margin-top: 15px;">
		<tr class="header">
			<th>
			</th>
			<th>
				Name
			</th>
			<th>
				Page Url
			</th>
			<th>
				Create On Date
			</th>
			<th>
				Last Updated Date
			</th>
			<th>
			</th>
			<th>
			</th>
		</tr>
		<% foreach (var item in Model) { %>
		<tr>
			<td>
				<%= Html.ActionLink("Edit Page", "Edit", new { id=item.Id }) %>
			</td>
			<td>
				<%= Html.Encode(item.Name) %>
			</td>
			<td>
				<a href="/Pages/<%= Html.Encode(item.Url) %>" target="_blank">/Pages/<%=item.Url %></a>
			</td>
			<td>
				<%= Html.Encode(String.Format("{0:g}", item.CreateDate)) %>
			</td>
			<td>
				<%= Html.Encode(String.Format("{0:g}", item.UpdateDate)) %>
			</td>
			<td>
				<% if (item.Name.ToLower() != "index") { %>
				<%= Html.ActionLink("Delete", "Delete", new { id = item.Id }) %>
				<% } %>
			</td>
			<td>
				<%= Html.ActionLink("Page Security", "Security", "WebPages", new { id= item.Id }, null)%>
			</td>
		</tr>
		<% } %>
	</table>
</asp:Content>
