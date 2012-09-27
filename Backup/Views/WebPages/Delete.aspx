<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebPage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Delete</h2>
    
    <% using (Html.BeginForm()) {%>
			
        <fieldset>
            <p>
                Are  you sure you want to delete the page <b><%= Model.Name %>?</b>
            </p>
            <p>
					<input type="submit" value="Delete" />  |  <%= Html.ActionLink("Cancel", "Index") %>
					
            </p>
       
        </fieldset>

    <% } %>
</asp:Content>

