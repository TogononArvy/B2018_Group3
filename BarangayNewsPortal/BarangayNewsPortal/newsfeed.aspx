<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="newsfeed.aspx.cs" Inherits="BarangayNewsPortal.newsfeed" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>NewsFeed</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>

   
</head>
<body >
   
  <div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
      <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"></a>
    <a href="Login.aspx" class="w3-bar-item w3-button w3-padding-large w3-white">Logout</a></div>

  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
      <a href="Login.aspx" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
  </div>
</div><br /> <br />S
     <form id="form2" runat="server">
         <div class = "list" align="center" >
     <asp:DataList ID="Datalist1" runat="server" CssClass="row" align="center" width="150px" BorderColor="Black" BorderWidth="1px" GridLines="Both">
         <ItemTemplate>
        <div class="col-8" align="center" >
           <h4><%#Eval("Title")%></h4>  
           <h5><%#Eval("Description")%></h5>  
        </div>
              <div class="row zzz">
                 <div class="col-4" align="center" >
                 <asp:Image ID="IMG" runat="server" ImageUrl='<%#Eval("Image") %>' width="600"></asp:Image>                   
                     </div>
             </div>
         </ItemTemplate>
     </asp:DataList>
      </div>
    </form>
     
</body>
</html>
