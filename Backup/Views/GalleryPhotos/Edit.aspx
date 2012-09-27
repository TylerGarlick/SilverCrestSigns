<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.GalleryPhoto>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <p>
					<img src="<%= Model.PhotoUrl %>" alt="" />
            </p>
            <p>
                <label for="Name">Name</label>
                <%= Html.TextBox("Name", Model.Name) %>
                <%= Html.ValidationMessage("Name", "*") %>
            </p>
            <p>
                <label for="Description">Description</label>
                <%= Html.TextArea("Description", Model.Description) %>
                <%= Html.ValidationMessage("Description", "*") %>
            </p>
            <p>
                <label for="Tags">Tags</label>
                <%= Html.TextBox("Tags", Model.Tags) %>
                <%= Html.ValidationMessage("Tags", "*") %>
            </p>
            <p>
                <%= Html.CheckBox("Active", Model.Active) %> Show Photo
                <%= Html.ValidationMessage("Active", "*") %>
            </p>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index", new {galleryId = Request["galleryId"] })%>
    </div>

</asp:Content>

