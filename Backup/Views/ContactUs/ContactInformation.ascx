<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<% if(ViewData["ContactInformation"] != null) { %>
<% CMS.Library.Models.WebsiteSetting information = (CMS.Library.Models.WebsiteSetting)ViewData["ContactInformation"]; %>
	<h1><%= information.ContactUs_CompanyName %></h1>
	<h3>Address</h3>
	<div>
		<%= information.ContactUs_Address %>
	</div>
	<div>
		<%= information.ContactUs_City %>, <%= information.ContactUs_State %> <%= information.ContactUs_Zip %>
	</div>
	<% if(information.ContactUs_Phone.Length > 0) { %>
	<div style="margin-top: 10px;">
		Phone:  <%= information.ContactUs_Phone%>
	</div>
	<% } %>
	
	<% if(information.ContactUs_Fax.Length > 0) { %>
	<div>
		Fax:  <%= information.ContactUs_Fax%>
	</div>
	<% } %>
<%} %>
