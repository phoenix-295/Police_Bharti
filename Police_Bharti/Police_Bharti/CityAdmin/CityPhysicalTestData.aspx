<%@ Page Title="" Language="C#" MasterPageFile="~/CityAdmin/CityAdminMaster.Master" AutoEventWireup="true" CodeBehind="CityPhysicalTestData.aspx.cs" Inherits="Police_Bharti.CityAdmin.CityPhysicalTestData" %>
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
        <td style="width:175px">&nbsp;</td>
        <td>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:GridView ID="gvcity" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="10" CellSpacing="2" ForeColor="Black" GridLines="Horizontal" style="color: #000000; font-size: large;" OnPageIndexChanging="gvcity_PageIndexChanging">
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
                            <asp:TemplateField HeaderText="Height">
                                <ItemTemplate>
                                    <asp:Label ID="lblh" runat="server" Text='<%# Eval("height") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Min Chest">
                                <ItemTemplate>
                                    <asp:Label ID="lblc" runat="server" Text='<%# Eval("minchest") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Max Chest">
                                <ItemTemplate>
                                    <asp:Label ID="lblmaxc" runat="server" Text='<%# Eval("maxchest") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Weight">
                                <ItemTemplate>
                                    <asp:Label ID="lblq" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
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
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:GridView ID="gvcity0" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderWidth="1px" CellPadding="10" CellSpacing="2" ForeColor="Black" GridLines="Horizontal" style="color: #000000; font-size: large;" OnPageIndexChanging="gvcity0_PageIndexChanging">
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
                            <asp:TemplateField HeaderText="Height">
                                <ItemTemplate>
                                    <asp:Label ID="lblh0" runat="server" Text='<%# Eval("height") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Weight">
                                <ItemTemplate>
                                    <asp:Label ID="lblq0" runat="server" Text='<%# Eval("weight") %>'></asp:Label>
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
                </asp:View>
            </asp:MultiView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width:175px">&nbsp;</td>
        <td style="text-align:right">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width:175px">&nbsp;</td>
        <td style="color: #FF0000">
            <br />
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width:175px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
                </ContentTemplate>
                </asp:UpdatePanel>


</asp:Content>
