<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Welcome.aspx.cs" Inherits="ASP.NET_login.Welcome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:Label ID="LabelUser" runat="server" Text="Label"></asp:Label> 
            <asp:Button ID="ButtonLogout" runat="server" Text="Log Out" OnClick="ButtonLogout_Click" />
    </div>
    </form>

</body>
</html>
