<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BarangayNewsPortal.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href ="style.css" rel ="stylesheet" />
    <title>Barangay News Portal</title>
</head>
<body>
    <center><h1>Barangay News Portal</></center>
   <div class = "Login">
        <h2> Login Here </h2> <br />
        <form runat ="server">
            <asp:TextBox runat ="server" CssClass ="Username" placeholder ="Username" ID ="Username"></asp:TextBox>
            <asp:TextBox runat ="server" CssClass = "Password" placeholder ="Password" ID="Password" TextMode="Password"></asp:TextBox>
            <br /> 
            <asp:Button Text ="Login" CssClass ="Submit" runat ="server" OnClick="Login_Click"/> <br /> <br />
            <br /> <br /> <br /><br />
            <asp:LinkButton  Text ="Don't Have an account? please sign-in" CssClass ="btnForget" runat ="server" ID="reg" OnClick="reg_Click"></asp:LinkButton>
        </form>
    </div>
</body>
</html>
