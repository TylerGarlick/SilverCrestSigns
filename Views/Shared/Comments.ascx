<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<CMS.Library.Models.PageComment>>" %>

<% Html.RenderPartial("CommentMessage"); %>

<% if (Model.Count() == 0) { %>
	<div class="no-comments">No comments have been posted!</div>
<% } else { %>
	<table class="comments" width="100%">
	<% foreach (var comment in Model) { %>
		<tr>
			<td class="commentperson">
				<div class="commentname"><%= comment.Name %></div>
				<div>on <%= comment.PostedDate %></div>
			</td>
			<td>
				<div><%= Html.Encode(comment.Text) %></div>
				<div><%= Html.ActionLink("Flag Comment", "FlagComment", new { controller="Comments", id=comment.Id }) %></div>
			</td>
		</tr>
	<% } %>
	</table>
<% } %>