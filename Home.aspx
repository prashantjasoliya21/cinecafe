<%@ Page EnableEventValidation="false" Debug="true" Title="Cinecafe" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <html>
        <head>
            <title>Cinecafe</title>
             <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
            <style>
                .image1 {
                    border-top-left-radius: 8px;
                    border-top-right-radius: 8px;
                    outline: none;
                }
                .style17
                {
                    border:solid grey;
                    letter-spacing:inherit;
                    background:white;
                    
                    border-top-left-radius:8px;
                    border-top-right-radius:8px;
                    border-bottom-left-radius:8px;
                    border-bottom-right-radius:8px;
                }
                .dp1 {
                    width:80%;
                    margin-top:-5px;
                    background:white;
                    border-bottom-left-radius:8px;
                    border-bottom-right-radius:8px;
                }
                .p1 {
                  
                    font-size:15px;
                    font-family:Roboto;
                    color:black;
                }
                
                .container {
  position: relative;
  width: 100%;
  max-width: 400px;
}

.container img {
  width: 100%;
  height: auto;
}

.container .btn {
  position:absolute;
  top: 50%;
  left: 40%;
  height:100%;
  width:80%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
  background-color:transparent;
  color:transparent; 
  border: none;
  cursor: pointer;
}

.container .btn:hover {
    color:transparent;
  background-color:transparent;
  outline:none;
}   
        
    </style>
        </head>
        <body >
            <form id="form1" runat="server">
                <br />
                <br />
                <br />
                <center>
            
     <asp:DataList ID="DataList1" runat="server" BorderColor="#151F99" CellPadding="5"  RepeatColumns="3" RepeatDirection="Horizontal" >
            <ItemTemplate>
                
                <table>
                        <tr>
                            <td>
                            <div class="container">
                                
                           <asp:ImageButton ID="img1" ImageUrl='<%#Eval("Poster")%>' CommandArgument='<%#Eval("M_name") %>' runat="server" Height="70%" Width="80%" class="image1"/>
                            <asp:linkbutton ID="btnlink" text='<%#Eval("M_name")%>' OnClick="btnlink_Click" CommandArgument='<%#Eval("M_name") %>' CssClass="btn" runat="server" />
                               <%-- <a href="Movie.aspx?id=<%#Eval("M_id") %>" class="btn"></a>--%>
                          
                            </div>
                            <div class="dp1"><br />
                                <div class="p1">
                                 &nbsp;&nbsp <asp:Label Text='<%#Eval("M_name")%>' CssClass="p1" runat="server" /></div>
                                <br>
                               </br> </div>
                        </td>
                            
                    </tr>
                    </table>
                    
            </ItemTemplate>
     </asp:DataList>
                    </center><br /><br />
       </form>
        </body>
    </html>
    
</asp:Content>

