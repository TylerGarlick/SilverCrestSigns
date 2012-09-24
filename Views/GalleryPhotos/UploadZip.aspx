<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.Gallery>" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Photo Gallery Module > Upload Many Photos
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   <h2>Upload Many Photos</h2>
   <% using (Html.BeginForm("UploadZip", "GalleryPhotos", new { galleryId = Request["galleryId"] }, FormMethod.Post, new { enctype = "multipart/form-data" })) { %>
   <fieldset>
		<p>
			Uploading multiple files is simple.  Simply, zip up a directory of images, and upload the zip file here.  
		</p>
		<p>
			<label>Zip File</label>
			<input type="file" name="zipFile" id="zipFile" />
		</p>
		<p>
			<input type="submit" value="Upload" /> | <%= Html.ActionLink("Back", "Index", new { galleryId = Request["galleryId"] })%>
		</p>
	</fieldset>	 
	<% } %>

</asp:Content>
