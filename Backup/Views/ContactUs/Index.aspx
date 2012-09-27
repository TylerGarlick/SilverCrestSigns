<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/MainTemplate.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Contact Us</h2>
	<%= Html.ValidationSummary() %>
	<div style="margin-top: 15px; margin-bottom: 15px; text-align:left;">
		<center><% Html.RenderPartial("ContactInformation", ViewData); %></center>
	</div>
	<%using (Html.BeginForm()) { %>
	<fieldset>
		<p>
			<label for="Name">Name</label>
			<%= Html.TextBox("Name")%>
			<%= Html.ValidationMessage("Name")%>
		</p>
		<p>
			<label for="Name">Email</label>
			<%= Html.TextBox("Email")%>
			<%= Html.ValidationMessage("Email")%>
		</p>
		<p>
			<label for="Name">Message</label>
			<%= Html.TextArea("Message", new { cols = 140, rows = 15 })%>
			<%= Html.ValidationMessage("Message")%>
		</p>
		<p><input type="submit" value="Send" /></p>
	</fieldset>
	<% } %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="HeadContent" runat="server">
	<title>Contact Us</title>
</asp:Content>
