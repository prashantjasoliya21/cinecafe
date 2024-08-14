<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Adminprofile.aspx.cs" Inherits="Admin_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <title></title>
            <style>
body {
  margin: 0;
  font-family: "Lato", sans-serif;
}

.sidebar {
  margin: 0;
  padding: 0;
  width:13%;
  background-color: #f1f1f1;
  position:relative;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #7fcd91;
  color: white;
}
.btn {
    height:30%;
    width:30%;
                }
                    .btn:focus {
                         background-color: #7fcd91;
                    }
                .buttonprofile {
                    color:white;
                    background-color: #7fcd91;
                }
.sidebar a:hover:not(.active) {
  background-color: #7fcd91;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
                .plogo {
                  margin-left:25%;
                  margin-top:-25%;
                }
                 .btnli2 {
    width:100px;
    margin-top:100%;
    
    color:blue;
    background-color:white;
}
    .btnli2:hover {
      
       opacity:0.6;
    }
</style>
        </head>
   
    <body>
        <div class="sidebar">
  
            <asp:LinkButton ID="profileinfo" CssClass="" Text="Personal Info" OnClick="profileinfo_Click" runat="server" />
            <asp:LinkButton ID="theater" OnClick="theater_Click1" Text="Theater" runat="server" />
             <asp:LinkButton ID="LinkButton1" Text="Movie" runat="server" />
             <asp:LinkButton ID="LinkButton2" Text="Booked Tickets" runat="server" />
             <asp:LinkButton ID="LinkButton3" Text="Cancelled Tickets" runat="server" />
  
  
</div>

<div class="content">
    <center>
      <table class="plogo">
          <tr>
              <td>
                  <asp:image ID="Image1" CssClass="btn" imageurl="~/img/user.png" runat="server" />
              </td>
          </tr></table>
      </center>
    <br />
    <center>
         <asp:DataList ID="dtlprofile" CssClass="" runat="server" >
            <ItemTemplate>
              
                 <table>
          <tr>
              <td>
                  <asp:label ID="username" text="UserName :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="txtusername"  ReadOnly="true" runat="server" Text='<%# Eval("Username") %>' />
              </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="txtpassword" text="Password :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="password"  ReadOnly="true" runat="server" Text='<%# Eval("Password") %>' />
              </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="txtname" text="Name :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="name"  ReadOnly="true" runat="server" Text='<%# Eval("Name") %>' />
              </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="mbno" text="Mobile No. :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="txtmbno"  ReadOnly="true" runat="server" Text='<%# Eval("MobileNo") %>' />
              </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="email" text="Email :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="txtemail"  ReadOnly="true" runat="server" Text='<%# Eval("Email") %>' />
              </td>
          </tr>
           <tr>
              <td>
                  <asp:label ID="theater" text="Theater :" runat="server" />
              </td>
              <td>
                  <asp:textbox ID="txttheater"  ReadOnly="true" runat="server" Text='<%# Eval("TheaterName") %>' />
              </td>
          </tr>
          
      </table>
               
                <br />
                <br />
            </ItemTemplate>
        </asp:DataList>
     
  </center>
     <center>
                  <asp:DataList ID="dtltheater" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                   <table>
                       <tr>
                           <td>
                               <div >
                                 
  <asp:LinkButton ID="theaterbind" OnClick="theaterbind_Click" CssClass="btnli2" CommandArgument='<%#Eval("TheaterName") %>' runat="server" BackColor="Black" Text='<%#Eval("TheaterName") %>' />                 <br />    
                                       </div>
                           </td>
                       </tr>
                   </table>
                </ItemTemplate>
            </asp:DataList>
            </center>  
</div>

    </body>
         </html>
</asp:Content>

