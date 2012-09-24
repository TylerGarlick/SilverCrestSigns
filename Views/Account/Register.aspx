<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Register</title>
	<link href="/Content/CSS/SharedStyles.css" rel="stylesheet" type="text/css" />
	<link href="/Content/CSS/LoginStyles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="login">
		 <h2>Create a New Account</h2>
		 <p>
			  Use the form below to create a new account. 
		 </p>
		 <p>
			  Passwords are required to be a minimum of <%=Html.Encode(ViewData["PasswordLength"])%> characters in length.
		 </p>
		 <%= Html.ValidationSummary("Account creation was unsuccessful. Please correct the errors and try again.") %>

		 <% using (Html.BeginForm()) { %>
			  <div>
					<fieldset style="border-bottom: 0px;">
						 <p>
							  <label for="username">Username</label>
							  <%= Html.TextBox("username") %>
							  <%= Html.ValidationMessage("username") %>
						 </p>
						 <p>
							  <label for="email">Email</label>
							  <%= Html.TextBox("email") %>
							  <%= Html.ValidationMessage("email") %>
						 </p>
						 <p>
							  <label for="password">Password</label>
							  <%= Html.Password("password") %>
							  <%= Html.ValidationMessage("password") %>
						 </p>
						 <p>
							  <label for="confirmPassword">Confirm password </label>
							  <%= Html.Password("confirmPassword") %>
							  <%= Html.ValidationMessage("confirmPassword") %>
						 </p>
						 <p>
							  <input type="submit" value="Register" />
						 </p>
					</fieldset>
			  </div>
		 <% } %>
	</div>
</body>
</html>
