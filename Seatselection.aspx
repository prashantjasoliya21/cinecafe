<%@ Page  EnableEventValidation="false" Title="" Language="C#" MasterPageFile="~/Clientmaster.master" AutoEventWireup="true" CodeFile="Seatselection.aspx.cs" Inherits="Seatselection" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <style type="text/css">
        .style1 {
            width: 652px;
        }

        .style2 {
            width: 131px;
        }

        .style3 {
            width: 194px;
        }

        .style4 {
            width: 111px;
        }

        .style5 {
            width: 182px;
        }

        .style6 {
            width: 882px;
        }

        .auto-style1 {
            width: 882px;
            height: 159px;
        }

        .auto-style2 {
            width: 182px;
            height: 8px;
        }

        .auto-style3 {
            width: 131px;
            height: 8px;
        }

        .auto-style4 {
            width: 111px;
            height: 8px;
        }

        .auto-style5 {
            height: 8px;
        }
    </style>

    <body>
        <form runat="server">
            <div>
                <asp:TextBox ID="txtseatnumber" runat="server" />
            </div>
            <div>
                <center>
                <table>
                    <tr>
                         <td >
                        <center>
                       <asp:GridView ID="gvScreenLayout1" runat="server" AutoGenerateColumns="False"
                                AllowPaging="True"
                                OnSelectedIndexChanging="gvScreenLayout1_SelectedIndexChanging"
                                OnPageIndexChanging="gvScreenLayout1_PageIndexChanging"
                                PageSize="26" ShowHeader="False" CellSpacing="2" OnSelectedIndexChanged="gvScreenLayout1_SelectedIndexChanged">
                                <RowStyle />

                                <Columns>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" Text='<%# Eval("RowName") %>' runat="server"></asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>
                                   

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink2" Text='<%# Eval("cate_name") %>' runat="server"></asp:HyperLink>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                          <div class="">
                                             
                                            <asp:ImageButton ID="Img1" OnClick="Img1_Click"  CommandArgument='<%# Eval("1") %>' CommandName="ib1" ImageUrl="~/img/chair.png"
                                              Visible='<%# MyVisible(Eval("1").ToString()) %>' runat="server" />
                                          </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <div>
                                            <asp:ImageButton ID="ImageButton2" CssClass="seat" runat="server"  CommandArgument='<%# Eval("2") %>' ImageUrl="~/img/chair.png"
                                                CommandName="ib2" Visible='<%# MyVisible(Eval("2").ToString()) %>' />
                                            
                                            </div>
                                        </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div >
                                            <asp:ImageButton ID="ImageButton3" runat="server" CommandArgument='<%# Eval("3") %>' 
                                                CommandName="ib3" Visible='<%# MyVisible(Eval("3").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>

                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton4" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("4") %>'
                                                CommandName="ib4" Visible='<%# MyVisible(Eval("4").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>


                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton5" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("5") %>' CommandName="ib5" Visible='<%# MyVisible(Eval("5").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />
                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton6" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("6") %>' CommandName="ib6" Visible='<%# MyVisible(Eval("6").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton7" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("7") %>' CommandName="ib7" Visible='<%# MyVisible(Eval("7").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton8" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("8") %>' CommandName="ib8" Visible='<%# MyVisible(Eval("8").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton9" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("9") %>' CommandName="ib9" Visible='<%# MyVisible(Eval("9").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton10" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("10") %>' CommandName="ib10" Visible='<%# MyVisible(Eval("10").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton11" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("11") %>' CommandName="ib11" Visible='<%# MyVisible(Eval("11").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton12" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("12") %>' CommandName="ib12" Visible='<%# MyVisible(Eval("12").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton13" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("13") %>' CommandName="ib13" Visible='<%# MyVisible(Eval("13").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton14" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("14") %>' CommandName="ib14 " Visible='<%# MyVisible(Eval("14").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton15" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("15") %>' CommandName="ib15" Visible='<%# MyVisible(Eval("15").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton16" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("16") %>' CommandName="ib16" Visible='<%# MyVisible(Eval("16").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton17" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("17") %>' CommandName="ib17" Visible='<%# MyVisible(Eval("17").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton18" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("18") %>' CommandName="ib18" Visible='<%# MyVisible(Eval("18").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton19" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("19") %>' CommandName="ib19" Visible='<%# MyVisible(Eval("19").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton20" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("20") %>' CommandName="ib20" Visible='<%# MyVisible(Eval("20").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton21" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("21") %>' CommandName="ib21" Visible='<%# MyVisible(Eval("21").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton22" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("22") %>' CommandName="ib22" Visible='<%# MyVisible(Eval("22").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton23" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("23") %>' CommandName="ib23" Visible='<%# MyVisible(Eval("23").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton24" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("24") %>' CommandName="ib24" Visible='<%# MyVisible(Eval("24").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton25" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("25") %>' CommandName="ib25" Visible='<%# MyVisible(Eval("25").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton26" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("26") %>' CommandName="ib26" Visible='<%# MyVisible(Eval("26").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton27" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("27") %>' CommandName="ib27" Visible='<%# MyVisible(Eval("27").ToString()) %>' ImageUrl="~/img/chair.png" />
                                        </div>
                                                 </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton28" CssClass="checkmark"  runat="server" CommandArgument='<%# Eval("28") %>' CommandName="ib28" Visible='<%# MyVisible(Eval("28").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton29" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("29") %>' CommandName="ib29" Visible='<%# MyVisible(Eval("29").ToString()) %>' ImageUrl="~/img/chair.png" />
                                       </div>
                                                  </ItemTemplate>
                                        <ItemStyle BorderStyle="None" />

                                    </asp:TemplateField>

                                    <asp:TemplateField>
                                        <ItemTemplate>
                                             <div class="container">
                                            <asp:ImageButton ID="ImageButton30" CssClass="checkmark" runat="server" CommandArgument='<%# Eval("30") %>' CommandName="ib30" Visible='<%# MyVisible(Eval("30").ToString()) %>' ImageUrl="~/img/chair.png" />
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
                    </td>
                    </tr>
                    <tr>
                        <td>
                            <br /><br />
                        </td>
                    </tr>
                </table>
                    <asp:button ID="submit" OnClick="submit_Click" text="submit" runat="server" />
                    <asp:label ID="lblmsg" text="" runat="server" />
              </center>
            </div>
        </form>
    </body>
</asp:Content>

