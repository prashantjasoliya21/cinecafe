<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Admintheater.aspx.cs" Inherits="Admin_Admintheater" %>

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
    margin-top:-400px;
  margin-left: 100px;
  padding: 1px 16px;
  height:600px;
}
div.content1 {
    margin-top:-400px;
  margin-left: 200px;
  padding: 1px 16px;
  height:600px;
}
div.content2 {
    margin-top:-600px;
  margin-left: 600px;
  padding: 1px 16px;
  height:600px;
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
                  .font {
                      font-size:10px;
                  }
</style>
        </head>
        <body>
             <div class="sidebar">
  
            <asp:LinkButton ID="profileinfo" Text="Personal Info" OnClick="profileinfo_Click" runat="server" />
            <asp:LinkButton ID="theater" OnClick="theater_Click" Text="Theater" runat="server" />
             <asp:LinkButton ID="LinkButton1" Text="Movie" runat="server" />
             <asp:LinkButton ID="LinkButton2" Text="Booked Tickets" runat="server" />
             <asp:LinkButton ID="LinkButton3" Text="Cancelled Tickets" runat="server" />
  
  
</div>
            <div class="content">
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
            <div class="content2">
  <center>
                  <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal">
                <ItemTemplate>
                   <table>
                       <tr>
                           <td>
                               <div >
                                 
                                <asp:LinkButton ID="screenname" OnClick="screenname_Click" CssClass="btnli2" CommandArgument='<%#Eval("ScreenId") %>' runat="server" BackColor="#7fcd91" Text='<%#Eval("ScreenName") %>' />                 <br />    
                                       </div>
                           </td>
                       </tr>
                   </table>
                </ItemTemplate>
            </asp:DataList>
            </center> 
                
</div>
            <div class="content1">
                <center>
                <asp:GridView ID="gvScreenLayout2" runat="server" AutoGenerateColumns="False"
                     AllowPaging="True"
                    OnSelectedIndexChanging="gvScreenLayout2_SelectedIndexChanging"
                    OnPageIndexChanging="gvScreenLayout2_PageIndexChanging"
                    PageSize="20" ShowHeader="False" CellSpacing="2" 
                    OnSelectedIndexChanged="gvScreenLayout2_SelectedIndexChanged">
                    <RowStyle />

                                <Columns>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="HyperLink1" class="font" Text='<%# Eval("RowName") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>
                                   

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Label ID="HyperLink2" CssClass="font" Text='<%# Eval("cate_name") %>' runat="server"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                          <div class="">
                                             
                                            <asp:Image ID="Img1" Height="15px" Width="15px"  CommandArgument='<%# Eval("1") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                              Visible='<%# MyVisible(Eval("1").ToString()) %>' runat="server" />
                                          </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <div>
                                            <asp:Image ID="ImageButton2" Height="15px" Width="15px" CssClass="seat" runat="server"  CommandArgument='<%# Eval("2") %>' ImageUrl="~/img/chair1.png"
                                                CommandName="ib2" Visible='<%# MyVisible(Eval("2").ToString()) %>' />
                                            
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div >
                                            <asp:Image ID="ImageButton3" Height="15px" Width="15px" runat="server" CommandArgument='<%# Eval("3") %>' 
                                                CommandName="ib3" Visible='<%# MyVisible(Eval("3").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>

                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton4" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("4") %>'
                                                CommandName="ib4" Visible='<%# MyVisible(Eval("4").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>


                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton5" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("5") %>' CommandName="ib5" Visible='<%# MyVisible(Eval("5").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton6" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("6") %>' CommandName="ib6" Visible='<%# MyVisible(Eval("6").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton7" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("7") %>' CommandName="ib7" Visible='<%# MyVisible(Eval("7").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton8" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("8") %>' CommandName="ib8" Visible='<%# MyVisible(Eval("8").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton9" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("9") %>' CommandName="ib9" Visible='<%# MyVisible(Eval("9").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton10" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("10") %>' CommandName="ib10" Visible='<%# MyVisible(Eval("10").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton11" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("11") %>' CommandName="ib11" Visible='<%# MyVisible(Eval("11").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton12" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("12") %>' CommandName="ib12" Visible='<%# MyVisible(Eval("12").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton13" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("13") %>' CommandName="ib13" Visible='<%# MyVisible(Eval("13").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton14" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("14") %>' CommandName="ib14 " Visible='<%# MyVisible(Eval("14").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton15" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("15") %>' CommandName="ib15" Visible='<%# MyVisible(Eval("15").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton16" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("16") %>' CommandName="ib16" Visible='<%# MyVisible(Eval("16").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton17" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("17") %>' CommandName="ib17" Visible='<%# MyVisible(Eval("17").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton18" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("18") %>' CommandName="ib18" Visible='<%# MyVisible(Eval("18").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton19" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("19") %>' CommandName="ib19" Visible='<%# MyVisible(Eval("19").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton20" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("20") %>' CommandName="ib20" Visible='<%# MyVisible(Eval("20").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton21" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("21") %>' CommandName="ib21" Visible='<%# MyVisible(Eval("21").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton22" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("22") %>' CommandName="ib22" Visible='<%# MyVisible(Eval("22").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton23" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("23") %>' CommandName="ib23" Visible='<%# MyVisible(Eval("23").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton24" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("24") %>' CommandName="ib24" Visible='<%# MyVisible(Eval("24").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton25" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("25") %>' CommandName="ib25" Visible='<%# MyVisible(Eval("25").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton26" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("26") %>' CommandName="ib26" Visible='<%# MyVisible(Eval("26").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton27" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("27") %>' CommandName="ib27" Visible='<%# MyVisible(Eval("27").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton28" Height="15px" Width="15px" CssClass="checkmark"  runat="server" CommandArgument='<%# Eval("28") %>' CommandName="ib28" Visible='<%# MyVisible(Eval("28").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton29" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("29") %>' CommandName="ib29" Visible='<%# MyVisible(Eval("29").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:Image ID="ImageButton30" Height="15px" Width="15px" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("30") %>' CommandName="ib30" Visible='<%# MyVisible(Eval("30").ToString()) %>' ImageUrl="~/img/chair1.png" />
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>
                                    
                                </Columns>
                                <FooterStyle BorderStyle="None" />
                                <SelectedRowStyle BorderStyle="None" />
                                <EditRowStyle BorderStyle="None" />
                                <AlternatingRowStyle BorderStyle="None" />
                </asp:GridView>
</center>
            </div>
 <br /><br /><br /><br /><br /> <br /><br />
        </body>
    </html>
</asp:Content>

 <%--<asp:DataList ID="DataList1" runat="server" BorderColor="#151F99" CellPadding="5"  RepeatColumns="1" RepeatDirection="Horizontal" >
            <ItemTemplate>
                
                <table border="1">
                        <tr>
                            <td>
                  
                                <asp:Label ID="RowName" Text='<%#Eval("RowName")%>' runat="server" /></td>
                               <td> <asp:Label ID="catename"  Text='<%#Eval("cate_name")%>' runat="server" /> </td>
                               <td><asp:ImageButton ID="ImageButton1" CommandArgument='<%# Eval("1") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("1").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton2" CommandArgument='<%# Eval("2") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("2").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton3" CommandArgument='<%# Eval("3") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("3").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton4" CommandArgument='<%# Eval("4") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("4").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton5" CommandArgument='<%# Eval("5") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("5").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton6" CommandArgument='<%# Eval("6") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("6").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton7" CommandArgument='<%# Eval("7") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("7").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton8" CommandArgument='<%# Eval("8") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("8").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton9" CommandArgument='<%# Eval("9") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("9").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton10" CommandArgument='<%# Eval("10") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("10").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton11" CommandArgument='<%# Eval("11") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("11").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton12" CommandArgument='<%# Eval("12") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("12").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton13" CommandArgument='<%# Eval("13") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("13").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton14" CommandArgument='<%# Eval("14") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("14").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton15" CommandArgument='<%# Eval("15") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("15").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton16" CommandArgument='<%# Eval("16") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("16").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton17" CommandArgument='<%# Eval("17") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("17").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton18" CommandArgument='<%# Eval("18") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("18").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton19" CommandArgument='<%# Eval("19") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("19").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton20" CommandArgument='<%# Eval("20") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("20").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton21" CommandArgument='<%# Eval("21") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("21").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton22" CommandArgument='<%# Eval("22") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("22").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton23" CommandArgument='<%# Eval("22") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("23").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton24" CommandArgument='<%# Eval("23") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("23").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton25" CommandArgument='<%# Eval("24") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("24").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton26" CommandArgument='<%# Eval("25") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("25").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton27" CommandArgument='<%# Eval("26") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("26").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton28" CommandArgument='<%# Eval("27") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("27").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton29" CommandArgument='<%# Eval("28") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("28").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton30" CommandArgument='<%# Eval("29") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("29").ToString()) %>' runat="server" /></td>
                             <td><asp:ImageButton ID="ImageButton31" CommandArgument='<%# Eval("30") %>' CommandName="ib1" ImageUrl="~/img/chair1.png"
                                 Visible='<%# MyVisible(Eval("30").ToString()) %>' runat="server" /></td>

                          
                      
                       
                            
                    </tr>
                    </table>
                    
            </ItemTemplate>
     </asp:DataList>--%>