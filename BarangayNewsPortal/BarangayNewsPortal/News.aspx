<%@  Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="BarangayNewsPortal.News"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title></title>
     <style type="text/css">
         .auto-style2 {
             margin-right: 0px;
             margin-bottom: 0px;
         }
    
     </style>
</head>
<body style="background-image:url('tch.jpg');background-size:cover;
 background-repeat:no-repeat;">
     <form id="form1" runat="server" >
     <div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"></a>
    <a href="Adminpage.aspx" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="News.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">News</a>
    <a href="UsersForm.aspx" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Users</a>&nbsp;
    <a href="Login.aspx" class="w3-bar-item w3-button w3-padding-large w3-white">Logout</a></div>

  <div id="navDemo" class="w3-bar-block w3-white w3-hide w3-hide-large w3-hide-medium w3-large">
    <a href="Adminpage.aspx" class="w3-bar-item w3-button w3-padding-large">Link 1</a>
    <a href="News.aspx" class="w3-bar-item w3-button w3-padding-large">Link 2</a>
    <a href="UsersForm.aspx" class="w3-bar-item w3-button w3-padding-large">Link 3</a>
      <a href="Login.aspx" class="w3-bar-item w3-button w3-padding-large">Link 4</a>
  </div>
</div><br /><br /><br />
         <br />
             
         
             
       <div id="form2" style="margin-left:400px;border-style: solid; color:black; 
  width: 570px;
  height: 400px;
  padding: 50px;
  background: red;
  opacity:50%;border-radius: 15px;  ">
         <p>
          <asp:Label ID="label3" runat="server" Text="Title"  style= "width:500px; font-family: Times New Roman, Times, serif;font-size: 20px; color:white; "></asp:Label>
             <asp:TextBox ID="title" runat="server"></asp:TextBox>
            </p>  
            <p>
                <div id="Des" style="resize:both; overflow:auto;height:auto;width:auto;text-wrap:normal;">
         <asp:Label ID="label" runat="server" Text="Description" style=" text-align: match-parent; font-size: 17px;color:white;   " ></asp:Label>
    <asp:TextBox ID="descrip" runat="server" style=" padding-bottom: 80px;word-wrap:break-word;text-align:justify; height:100px; width:500px; background-color:white;  color:black;"></asp:TextBox></div>
        </p>
         <p>
           <asp:Label ID="Label1" runat="server" Text="Image" style="Height:500px; Width= 550px; color:white;"></asp:Label>
             <asp:FileUpload ID="upload" runat="server"  />
             
             <asp:Label ID="Label4" runat="server" Text="Label" style="color:white;"></asp:Label>
             
         </p>
         <p>
         <asp:Button ID="up" runat="server" OnClick="up_Click" Text="Upload" AutoGenerateColumns="false" style="Height=52px;"  />
         </p>
    </div> 
        <asp:GridView style="margin-left:380px;margin-top:150px;" ID="data" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="724px" HorizontalAlign="Center" CssClass="auto-style2" >
             <Columns>
                 <asp:BoundField DataField="Title" HeaderText="Title" >
                 <ItemStyle HorizontalAlign="Justify" VerticalAlign="Middle" Width="100px" />
                 </asp:BoundField>
                 <asp:BoundField DataField="Description" HeaderText="Description" />
                 <asp:ImageField DataImageUrlField="Image" HeaderText="Image">
                     <ControlStyle Height="50px" Width="150px" />
                     <ItemStyle Width="100px" />
                 </asp:ImageField>
             </Columns>
             <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
             <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
             <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
             <RowStyle BackColor="White" ForeColor="#003399" />
             <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
             <SortedAscendingCellStyle BackColor="#EDF6F6" />
             <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
             <SortedDescendingCellStyle BackColor="#D6DFDF" />
             <SortedDescendingHeaderStyle BackColor="#002876" />
      </asp:GridView>
     </form>
</body>
</html>
