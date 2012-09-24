<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebPage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Create</h2>

    <%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <p>
					<label for="TemplateId">Template</label>
					<%= Html.DropDownList("TemplateId", (List<SelectListItem>)ViewData["Templates"]) %>
					<%= Html.ValidationMessage("TemplateId", "*")%>
            </p>
            <p>
                <label for="Name">Name</label>
                <%= Html.TextBox("Name")%>
                <%= Html.ValidationMessage("Name", "*") %>
            </p>
            <p>
                <label for="Title">Title</label>
                <%= Html.TextBox("Title") %>
                <%= Html.ValidationMessage("Title", "*") %>
            </p>
            <p>
                <label for="Description">Description</label>
                <%= Html.TextArea("Description") %>
                <%= Html.ValidationMessage("Description", "*") %>
            </p>
            <p>
                <%= Html.CheckBox("AllowComments") %> Allow Comments
                <%= Html.ValidationMessage("AllowComments", "*")%>
            </p>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

