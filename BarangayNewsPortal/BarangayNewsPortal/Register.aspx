<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BarangayNewsPortal.Register" %>

<!DOCTYPE html>
<html>
<head runat="server">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Add icon library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
    font-family: Arial, Helvetica, sans-serif;
 
}
* {box-sizing: border-box;}

.input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 100%;
  margin-bottom: 15px;
}

.icon {
  padding: 10px;
  background: dodgerblue;
  color: white;
  min-width: 50px;
  text-align: center;
}

.input-field {
  width: 100%;
  padding: 10px;
  outline: none;
}

.input-field:focus {
  border: 2px solid dodgerblue;
}

/* Set a style for the submit button */
.btn {
  background-color: dodgerblue;
  color: white;
  padding: 15px 20px;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}


</style>
</head>
<body  style="background-image:url('tch.jpg');background-size:cover;  background-position: center; ">
   
<form id="forms" runat="server"  style="  margin-top: 200px;
  margin-bottom: 400px;
  margin-right: 300px;
  margin-left: 400px; align:center;width: 600px; height: 500px; padding: 50px; background: red; background-position:center; opacity:60%; height:400px; width:600px;border-radius: 25px;">
  <h2 style="border: 1px solid red; color:white; margin-left:150px; ">Register Form</h2>
  <div class="input-container" style=" margin-left:55px;">
    <i class="fa fa-user icon" style="border-radius: 25px;"></i>
      <asp:TextBox ID="username" runat="server" style="width:300px; height:50px;"></asp:TextBox>
  </div>

  <div class="input-container"  style="margin-left:55px;">
    <i class="fa fa-key icon" style="border-radius: 25px;"></i>
      <asp:TextBox ID="password" runat="server" TextMode="Password" style="width:300px;height:50px;"></asp:TextBox>
  </div>
    <asp:Button ID="Submit" runat="server" Text="Register" OnClick="Submit_Click" style="margin-left:150px; color:white; background-color: red; height:50px; width:150px;border-radius: 25px; align:center;"/>
  <p>
     <asp:Button ID="Login" runat="server" Text="Login" OnClick="loginclick" style="margin-left:150px; color:white; background-color: red; height:50px; width:150px;border-radius: 25px; align:center;"/>
  </p>
</form>

</body>
</html>