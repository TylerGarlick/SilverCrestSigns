<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<% using (Html.BeginForm()) { %>
	<div>
		<table>
			<tr>	
				<td style="padding: 3px;">
					<select name="Modules">
						<option value="TextModule">Text</option>
						<option value="MenuModule">Menu</option>
						<option value="GalleryModule">Photo Gallery</option>
					</select>
				</td>
				<td style="padding: 3px;">
					<%= Html.Hidden("ContentArea", ViewData["ContentArea"])%>
					<input type="submit" value="Add" />
				</td>
			</tr>
		</table>
	</div>
<% } %>