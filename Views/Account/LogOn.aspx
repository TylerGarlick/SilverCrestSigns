<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>SilverCrestSignsCMS > Login</title>
	<link href="/Content/CSS/SharedStyles.css" rel="stylesheet" type="text/css" />
	<link href="/Content/CSS/LoginStyles.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="login">
		<h2>Login</h2>
		<p>Please enter your username and password.</p>
		
		<%= Html.ValidationSummary("Login was unsuccessful. Please correct the errors and try again.") %>
		<% using (Html.BeginForm()) { %>
		<div>
			<fieldset>
				<p>
					<label for="username">
						Username:</label>
					<%= Html.TextBox("username") %>
					<%= Html.ValidationMessage("username") %>
				</p>
				<p>
					<label for="password">
						Password:</label>
					<%= Html.Password("password") %>
					<%= Html.ValidationMessage("password") %>
				</p>
				<p>
					<%= Html.CheckBox("rememberMe") %>
					<label class="inline" for="rememberMe">
						Remember me?</label>
				</p>
				<p>
					<input type="submit" value="Log On" />
				</p>
			</fieldset>
		</div>
		<% } %>
		
		<p>
			<%= Html.ActionLink("Register", "Register") %> if you don't have an account.
		</p>
	</div>
</body>
</html>
