<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<CMS.Library.Models.Menu>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	SilverCrestSignsCMS > Modules > Menu > Update Menu: <%= Model.Name %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Update Menu: <%= Model.Name %></h2>
    
    <% if (false) { %>
		<script src="../../Scripts/jquery-1.3.2.min-vsdoc.js" type="text/javascript"></script>
	<% } %>
	
	<script type="text/javascript">
		$(function() {
			$("#ShowAdvanced").click(function() {
				if ($("#ShowAdvanced").attr("checked")) {
					$("#CSS_Advanced").show();
				} else {
					$("#CSS_Advanced").hide();
				}
			});
		});
	</script>

    <%= Html.ValidationSummary("Edit was unsuccessful. Please correct the errors and try again.") %>

    <% using (Html.BeginForm()) {%>

        <fieldset>
            <p>
					<label for="Name">
						Name</label>
					<%= Html.TextBox("Name") %>
					<%= Html.ValidationMessage("Name", "*") %>
				</p>
				<p>
					<label for="Type">
						Layout Type</label>
					<%= Html.RadioButton("Type", 1, Model.Type == 1 ? true : false) %>
					Horizontal
					<%= Html.RadioButton("Type", 2, Model.Type == 2 ? true : false)%>
					Vertical
					<%= Html.ValidationMessage("Type", "*") %>
				</p>
				<p>
					<%= Html.CheckBox("ShowAdvanced", Model.CSS != null)%> Show Advance Options
				</p>
				
				<p id="CSS_Advanced" style='<%= Model.CSS != null ? string.Empty : "display:none;" %>'>
					<label for="CSS">CSS</label>
					<%= Html.TextArea("CSS", new { cols="140", rows="10" })%>
					<%= Html.ValidationMessage("CSS", "*") %>
				</p>
				<p>
					<input type="submit" value="Update" />
				</p>
        </fieldset>

    <% } %>

    <div>
        <%=Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

