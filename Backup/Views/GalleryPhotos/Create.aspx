<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.GalleryPhoto>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Gallery > <%= ((CMS.Library.Models.Gallery)ViewData["Gallery"]).Name %>  > Add Photo
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Gallery > <%= ((CMS.Library.Models.Gallery)ViewData["Gallery"]).Name %> > Add Photo</h2>

    <%= Html.ValidationSummary("Create was unsuccessful. Please correct the errors and try again.") %>
    <% using (Html.BeginForm("Create", "GalleryPhotos", new { galleryId = Request["galleryId"] }, FormMethod.Post, new { enctype = "multipart/form-data" })) {%>

        <fieldset>
            <p>
                <label for="PhotoUrl">Photo</label>
                <input type="file" name="Photo" />
                <%= Html.ValidationMessage("Photo", "*")%>
            </p>
            <p>
                <label for="Name">Name</label>
                <%= Html.TextBox("Name")%>
                <%= Html.ValidationMessage("Name", "*")%>
            </p>
            <p>
                <label for="Description">Description</label>
                <%= Html.TextArea("Description")%>
                <%= Html.ValidationMessage("Description", "*")%>
            </p>
            <p>
                <label for="Tags">Tags</label>
                <%= Html.TextBox("Tags")%>
                <%= Html.ValidationMessage("Tags", "*")%>
            </p>
            <p>
                <input type="submit" value="Create" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index", new { galleryId = Request["galleryId"] })%>
    </div>

</asp:Content>

