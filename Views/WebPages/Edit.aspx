<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebPage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit Page</h2>

    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
             <p>
					<label for="TemplateId">Template</label>
					<%= Html.DropDownList("TemplateId", (List<SelectListItem>)ViewData["Templates"], new {disabled="disabled" })%>
					<%= Html.ValidationMessage("TemplateId", "*")%>
            </p>
            <p>
                <label for="Name">Name</label>
                <% if (Model.Name == "Index") { %>
                <%= Html.TextBox("Name", Model.Name, new { disabled = "disabled" })%>
                <% } else { %>
                <%= Html.TextBox("Name", Model.Name)%>
                <% } %>
                <%= Html.ValidationMessage("Name", "*") %>
            </p>
            <p>
                <label for="Url">Url</label>
                 <% if (Model.Name == "Index") { %>
						<%= Html.TextBox("Url", Model.Url, new { disabled = "disabled" })%>
                 <% } else { %>
                  <%= Html.TextBox("Url", Model.Url) %>
                 <% } %>
               
                <%= Html.ValidationMessage("Url", "*") %>
            </p>
            <p>
                <label for="Title">Title</label>
                <%= Html.TextBox("Title", Model.Title) %>
                <%= Html.ValidationMessage("Title", "*") %>
            </p>
            <p>
                <label for="Description">Description</label>
                <%= Html.TextArea("Description", Model.Description) %>
                <%= Html.ValidationMessage("Description", "*") %>
            </p>
            <p>
                <%= Html.CheckBox("AllowComments", Model.AllowComments) %> Allow Comments
                <%= Html.ValidationMessage("AllowComments", "*")%>
            </p>
            <p>
                <%= Html.CheckBox("Active", Model.Active) %> Active
                <%= Html.ValidationMessage("Active", "*") %>
            </p>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

