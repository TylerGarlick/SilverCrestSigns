<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MainTemplate.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Not Authorized</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Not Authorized...</h2>
	<p>You don't have the proper permissions to view this page on the website. If you feel like you've reached this page in error or would like to have access to this page please contact the site administrator <a href="/ContactUs/">here</a>.
</asp:Content>
