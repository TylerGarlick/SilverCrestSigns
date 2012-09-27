<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.PageModule>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>SilverCrestSignsCMS > Update Text</title>
</head>
<body>
	<form runat="server" action='<%# "/TextModule/Update/" + Model.ModuleId %>'>
		<asp:ScriptManager ID="ScriptManager1" runat="server">
		</asp:ScriptManager>
		
		<div style="margin-bottom: 10px;">
			<span><input type="submit" value="Save" /></span>
			<span><input type="button" value="Cancel" onclick="javascript:window.location = '/WebPages/Builder/<%= Model.WebPage.Id %>'" /></span>
		</div>
		
		<script type="text/C#" runat="server">
			void Page_Load() {
				if (!IsPostBack) {
					HtmlEditor.ImageManager.ViewPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.ImageManager.UploadPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.ImageManager.MaxUploadFileSize = int.MaxValue;

					HtmlEditor.FlashManager.ViewPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.FlashManager.UploadPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.FlashManager.MaxUploadFileSize = int.MaxValue;

					HtmlEditor.DocumentManager.ViewPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.DocumentManager.UploadPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.DocumentManager.MaxUploadFileSize = int.MaxValue;

					HtmlEditor.SilverlightManager.ViewPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.SilverlightManager.UploadPaths = new string[] { "~/Content/Uploaded" };
					HtmlEditor.SilverlightManager.MaxUploadFileSize = int.MaxValue;
					DataBind();
				}
			}
		</script>
		<div>
			<% 
				HtmlEditor.Content = Server.UrlDecode(Model.TextModule.Html);
				HtmlEditor.ContentFilters = EditorFilters.ConvertToXhtml;		
			%>
			<telerik:RadEditor ID="HtmlEditor" runat="server" Width="100%"  Height="600px" DocumentManager-UploadPaths="~/Content/Uploaded" DialogHandlerUrl="~/Telerik.Web.UI.DialogHandler.axd" DocumentManager-MaxUploadFileSize="1000000000" MediaManager-UploadPaths="~/Content/Uploaded" MediaManager-MaxUploadFileSize="1000000000" FlashManager-UploadPaths="~/Content/Uploaded" FlashManager-MaxUploadFileSize="1000000000" ImageManager-UploadPaths="~/Content/Uploaded" ImageManager-MaxUploadFileSize="1000000000" SilverlightManager-UploadPaths="~/Content/Uploaded" SilverlightManager-MaxUploadFileSize="1000000000">
				<MediaManager UploadPaths="~/Content/Uploaded" MaxUploadFileSize="1000000000"></MediaManager>
				<SilverlightManager UploadPaths="~/Content/Uploaded" MaxUploadFileSize="1000000000"></SilverlightManager>
				<DocumentManager UploadPaths="~/Content/Uploaded" MaxUploadFileSize="1000000000"></DocumentManager>
				<FlashManager UploadPaths="~/Content/Uploaded" MaxUploadFileSize="1000000000"></FlashManager>
				<Content>
				</Content>
				<ImageManager UploadPaths="~/Content/Uploaded" MaxUploadFileSize="1000000000"></ImageManager>
			</telerik:RadEditor>
		</div>
	</form>
</body>
</html>
