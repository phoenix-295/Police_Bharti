<%@ Page Title="" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="City_Physical_Ground_Data.aspx.cs" Inherits="Police_Bharti.City_Physical.City_Physical_Ground_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
    <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <asp:Button ID="btnmale" runat="server" OnClick="btnmale_Click" Text="Male" />
                <asp:Button ID="btnf" runat="server" OnClick="btnf_Click" Text="Female" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <div class="text-center">
                            <asp:GridView ID="gvcity" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="10" CellSpacing="2" ForeColor="Black" GridLines="Horizontal" style="color: #000000; font-size: large;">
                                <Columns>
                                    <asp:TemplateField HeaderText="Application ID">
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("application_Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Full Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date Of Birth">
                                        <ItemTemplate>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("date_of_birth") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="1600 m">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td class="text-left">
                                                        <asp:Label ID="lbl1600" runat="server" Text='<%# Eval("race100") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-right">&nbsp;
                                                        <asp:Label ID="lblr1600m" runat="server" style="color: green" Text='<%# Eval("r16m") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="100 m">
                                        <ItemTemplate>
                                            <table border="0" class="w-100">
                                                <tr>
                                                    <td class="text-left">
                                                        <asp:Label ID="lbl100" runat="server" Text='<%# Eval("race100") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-right">&nbsp;&nbsp;
                                                        <asp:Label ID="lbl100m" runat="server" style="color: green" Text='<%# Eval("r1m") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Long Jump">
                                        <ItemTemplate>
                                            <table border="0" class="w-100">
                                                <tr>
                                                    <td class="text-center" style="width: 94px">
                                                        <asp:Label ID="lbllj" runat="server" Text='<%# Eval("longjump") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:Label ID="lblljm" runat="server" style="color: green" Text='<%# Eval("ljm") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="150px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Shot Put">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td class="text-left">
                                                        <asp:Label ID="lblsp" runat="server" Text='<%# Eval("shotput") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-right">&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lblspm" runat="server" style="color: green" Text='<%# Eval("spm") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Pull Ups">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td class="text-left">
                                                        <asp:Label ID="lblpu" runat="server" Text='<%# Eval("pullups") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-right">&nbsp;&nbsp;&nbsp;
                                                        <asp:Label ID="lblpum" runat="server" style="color: green" Text='<%# Eval("pum") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltot" runat="server" Text='<%# Eval("ground_total") %>' style="color: green"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <div class="text-center">
                            <asp:GridView ID="gvcity0" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="10" CellSpacing="2" ForeColor="Black" GridLines="Horizontal" style="color: #000000; font-size: large; margin-right: 0px;">
                                <Columns>
                                    <asp:TemplateField HeaderText="Application ID">
                                        <ItemTemplate>
                                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("application_Id") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Full Name">
                                        <ItemTemplate>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("full_name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Date Of Birth">
                                        <ItemTemplate>
                                            <asp:Label ID="Label8" runat="server" Text='<%# Eval("date_of_birth") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Gender">
                                        <ItemTemplate>
                                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="800m">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td class="text-center">
                                                        <asp:Label ID="lbl800" runat="server" Text='<%# Eval("race800") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:Label ID="lbl800m" runat="server" style="color: green" Text='<%# Eval("r8m") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="100m">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td class="text-center">
                                                        <asp:Label ID="lbl100" runat="server" Text='<%# Eval("race100") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:Label ID="lbl800" runat="server" style="color: green" Text='<%# Eval("r1m") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Long Jump">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lbllj" runat="server" Text='<%# Eval("longjump") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-center">
                                                        <asp:Label ID="lblljm" runat="server" style="color: green" Text='<%# Eval("ljm") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="150px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Shot Put">
                                        <ItemTemplate>
                                            <table class="w-100">
                                                <tr>
                                                    <td>
                                                        <asp:Label ID="lblsp" runat="server" Text='<%# Eval("shotput") %>'></asp:Label>
                                                    </td>
                                                    <td class="text-right">
                                                        <asp:Label ID="lblspm" runat="server" style="color: green" Text='<%# Eval("spm") %>'></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <HeaderStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Total">
                                        <ItemTemplate>
                                            <asp:Label ID="lbltot" runat="server" Text='<%# Eval("ground_total") %>' style="color: green"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                <SortedDescendingHeaderStyle BackColor="#242121" />
                            </asp:GridView>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td style="text-align:right">
                <asp:Button ID="btnshow" runat="server" Text="Send Data to Admin" OnClick="btnshow_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td style="color: #FF0000">Don&#39;t Send Before :&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" ForeColor="#339966"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
            </asp:UpdatePanel>

</asp:Content>
