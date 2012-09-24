<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<System.Web.Security.MembershipUser>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
	<h2>Edit Account</h2>
	
	<%= Html.ValidationSummary("Account creation was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) { %>
        <div>
            <fieldset>
                <legend>Account:  <%= Model.UserName %></b></legend>
                <p>
                    <label for="email">Email</label>
                    <%= Html.TextBox("email", Model.Email) %>
                    <%= Html.ValidationMessage("email") %>
                </p>
                <p>
                    <label for="password">Password (Leave blank if you don't want to change the password)</label>
                    <%= Html.Password("password") %>
                    <%= Html.ValidationMessage("password") %>
                </p>
                <p>
                    <label for="confirmPassword">Confirm password</label>
                    <%= Html.Password("confirmPassword") %>
                    <%= Html.ValidationMessage("confirmPassword") %>
                </p>
                <p>
						<label>Roles</label>
						<% Html.RenderPartial("UserRoles", ViewData); %>
                </p>
                <p>
                    <input type="submit" value="Update" /> | <%= Html.ActionLink("Cancel", "Index") %>
                </p>
            </fieldset>
        </div>
    <% } %>
</asp:Content>
