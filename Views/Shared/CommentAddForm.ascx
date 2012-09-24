<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>

<%= Html.ValidationSummary() %>

<%	using (Html.BeginForm("PostComment", "Comments", new { webpageId = ((CMS.Library.Models.WebPage)ViewData["Webpage"]).Id }, FormMethod.Post)) { %>
	<fieldset>
		<p>
			<label for="name">Name</label>
			<%= Html.TextBox("name", string.Empty) %>
		</p>
		<p>
			<label for="name">Website (optional)</label>
			<%= Html.TextBox("website") %>
		</p>
		<p>
			<label for="name">Comment</label>
			<%= Html.TextArea("comment")%>
		</p>
		<p>
			<input type="submit" value="Post Comment" />
		</p>
	</fieldset>
<% } %>