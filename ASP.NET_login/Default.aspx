<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ASP.NET_login.Default" %>

<!DOCTYPE html>
<%--https://www.youtube.com/watch?v=wlb5UQPrcgw  11:00--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body
        {
            background:#ccc;
        }
        .formclass
        {
            padding:20px;
            margin:0px auto;
            background:#fff;
            width:200px;
        }

        h2
        {
            text-align:center;
        }

        .input
        {
            padding:2px;
            width:100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="formclass">
        <h2>Login Page</h2>
        <asp:TextBox ID="TextBoxUsername" CssClass="input" placeholder="Username" runat="server"></asp:TextBox><br /> <br />
        <asp:TextBox ID="TextBoxPassword" CssClass="input" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox><br /> <br />
        <asp:Button ID="ButtonLogin" CssClass="input" width="100%" placeholder="" runat="server" Text="Login" OnClick="ButtonLogin_Click" />
    </div>
    </form>
</body>
</html>
