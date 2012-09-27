<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<CMS.Library.Models.GalleryPhoto>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Gallery
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

	<h2><%= Html.ActionLink("Gallery", "Index", "Galleries") %> > <%= ((CMS.Library.Models.Gallery)ViewData["Gallery"]).Name %> > View Photos</h2>
	<p><%= Html.ActionLink("Upload Single Photo", "Create", new {galleryId= Request["galleryId"] })%> | <%= Html.ActionLink("Upload Many Photos (Zip file)", "UploadZip", new {galleryId= Request["galleryId"] })%></p>
	
	<% if (Model.Count() > 0) { %>
   <table class="grid" style="margin-top: 15px;">
     <tr class="header">
         <th></th>
         <th></th>
         <th>
             Name
         </th>
     </tr>
	<% foreach (var item in Model) { %>
	  <tr>
			<td>
				 <%= Html.ActionLink("Edit", "Edit", new { id = item.Id, galleryId = Request["galleryId"] })%> |
				 <%= Html.ActionLink("Delete", "Delete", new { id = item.Id })%>
			</td>
			<td><img src="<%= item.PhotoThumbUrl %>" /></td>
			<td>
				 <%= Html.Encode(item.Name)%>
			</td>
	  </tr>
	<% } %>
	</table>
	<% } else { %>
		<div style="margin-top: 10px;">No Photos Exist!</div>
	<% } %>
</asp:Content>

