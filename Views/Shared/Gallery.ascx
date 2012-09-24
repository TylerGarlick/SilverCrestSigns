<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<CMS.Library.Models.Gallery>" %>
<script src="/Scripts/jquery.lightbox-0.5.min.js" type="text/javascript"></script>
<script src="/Scripts/cms.gallery.module.js" type="text/javascript"></script>
<link href="/Content/CSS/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" />

<table>
	<tr>
		<td style="padding: 10px;">
			<ul id="gallery">
				<% foreach (var photo in Model.GalleryPhotos) { %>
					<li>
						<div>
							<a href="<%= photo.PhotoUrl %>" title="<%= photo.Name %> <br /><%= photo.Description %>">
								<img src="<%= photo.PhotoThumbUrl %>" alt="" />
							</a>
						</div>
					</li>
				<% } %>
			</ul>
		</td>
	</tr>
</table>
