﻿<%@ Page Title="Results" Language="C#" MasterPageFile="~/CityWritten/CityWrittenMaster.Master" AutoEventWireup="true" CodeBehind="City_Written_test_Data.aspx.cs" Inherits="Police_Bharti.CityWritten.City_Written_test_Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="MainScriptManager" runat="server" />
        <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
    <table class="w-100">
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <asp:GridView ID="gvcity" runat="server" style="color: #000000; font-size: large;" ForeColor="Black" AllowPaging="True" BackColor="White" CellPadding="10" BorderColor="#CCCCCC" BorderWidth="1px" CellSpacing="2" GridLines="Horizontal" AutoGenerateColumns="False" OnPageIndexChanging="gvcity_PageIndexChanging">
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
                        <asp:TemplateField HeaderText="Marathi Score">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("mar_score") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="English Score">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("eng_score") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Reasoning Score">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("reso_score") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="GK &amp; Current Affairs">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("gk_score") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="History &amp; Geography">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("histg_score") %>'></asp:Label>
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
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px; height: 30px;"></td>
            <td  height: 30px;">&nbsp;</td>
            <td style="height: 30px">
                <asp:Button ID="btnshow" runat="server" OnClick="btnshow_Click" Text="Send Data to Admin" />
            </td>
        </tr>
        <tr>
            <td style="width: 175px; height: 32px;"></td>
            <td style="color: #FF0000">Don&#39;t Send Before :&nbsp;
                <asp:Label ID="Label10" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" ForeColor="#339966"></asp:Label>
            </td>
            <td style="height: 32px"></td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
