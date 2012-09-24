<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<CMS.Library.Models.PageComment>>" %>

<% if (Model.Count() > 0) { %>
    <table class="grid">
        <tr class="header">
            <th></th>
            <th>
                Name
            </th>
            <th>
                Text
            </th>
            <th>
                Posted Date
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
               <%= Html.ActionLink("Approve", "Approve", "Comments", new { id = item.Id }, null)%> | <%= Html.ActionLink("Delete", "Delete", "Comments", new { id = item.Id }, null)%>
            </td>
            <td>
                <%= Html.Encode(item.Name)%>
            </td>
            <td>
                <%= Html.Encode(item.Text)%>
            </td>
            <td>
                <%= Html.Encode(String.Format("{0:g}", item.PostedDate))%>
            </td>
        </tr>
    
    <% } %>

    </table>
<% } else { %>
	<div>There are no comments awaiting approval!</div>
<% } %>