<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.WebsiteSetting>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Contact Us Settings</h2>

    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <p>
                <label for="CompanyName">Company Name</label>
                <%= Html.TextBox("CompanyName", Model.ContactUs_CompanyName) %>
                <%= Html.ValidationMessage("CompanyName", "*") %>
            </p>
            <p>
                <label for="Email">Email</label>
                <%= Html.TextBox("Email", Model.ContactUs_Email) %>
                <%= Html.ValidationMessage("Email", "*") %>
            </p>
            <p>
                <label for="Address">Address</label>
                <%= Html.TextBox("Address", Model.ContactUs_Address) %>
                <%= Html.ValidationMessage("Address", "*") %>
            </p>
            <p>
                <label for="City">City</label>
                <%= Html.TextBox("City", Model.ContactUs_City) %>
                <%= Html.ValidationMessage("City", "*") %>
            </p>
            <p>
                <label for="State">State</label>
                <%= Html.TextBox("State", Model.ContactUs_State) %>
                <%= Html.ValidationMessage("State", "*") %>
            </p>
            <p>
                <label for="Zip">Zip</label>
                <%= Html.TextBox("Zip", Model.ContactUs_Zip) %>
                <%= Html.ValidationMessage("Zip", "*") %>
            </p>
            <p>
                <label for="Phone">Phone</label>
                <%= Html.TextBox("Phone", Model.ContactUs_Phone) %>
                <%= Html.ValidationMessage("Phone", "*") %>
            </p>
            <p>
                <label for="Fax">Fax</label>
                <%= Html.TextBox("Fax", Model.ContactUs_Fax) %>
                <%= Html.ValidationMessage("Fax", "*") %>
            </p>
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "ControlPanel") %>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>

