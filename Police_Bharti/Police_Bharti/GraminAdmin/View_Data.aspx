<%@ Page Title="" Language="C#" MasterPageFile="~/GraminAdmin/GraminAdminMaster.Master" AutoEventWireup="true" CodeBehind="View_Data.aspx.cs" Inherits="Police_Bharti.GraminAdmin.View_Data" %>
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
                        <asp:TemplateField HeaderText="Date Of Birth">
                            <ItemTemplate>
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("date_of_birth") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="District">
                            <ItemTemplate>
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("district") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Gender">
                            <ItemTemplate>
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("gender") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Cast">
                            <ItemTemplate>
                                <asp:Label ID="Label6" runat="server" Text='<%# Eval("cast") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Category">
                            <ItemTemplate>
                                <asp:Label ID="Label7" runat="server" Text='<%# Eval("category") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Email">
                            <ItemTemplate>
                                <asp:Label ID="Label8" runat="server" Text='<%# Eval("email") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Mobile">
                            <ItemTemplate>
                                <asp:Label ID="Label9" runat="server" Text='<%# Eval("phonenumber") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Region">
                            <ItemTemplate>
                                <asp:Label ID="Label10" runat="server" Text='<%# Eval("region") %>'></asp:Label>
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
            <td  height: 30px;">
                <span>
                <asp:Button CssClass="btn btn-primary" ID="btninv" runat="server" Text="Invite" OnClick="btninv_Click" />
                

                </span>
            </td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width: 175px; height: 32px;"></td>
            <td style="height: 32px">
                <asp:Label ID="Label11" runat="server"></asp:Label>
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
