<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Plan_Gramin_Event.aspx.cs" Inherits="Police_Bharti.Admin.Plan_Gramin_Event" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
    <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td><cc1:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></cc1:ToolkitScriptManager> 
                
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <asp:DropDownList ID="DropDownList1" CssClass="form-control btn-info" runat="server" Width="291px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Physical Test</asp:ListItem>
                    <asp:ListItem>Written Test</asp:ListItem>
                    <asp:ListItem>Medical Test</asp:ListItem>
                </asp:DropDownList>
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
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 308px">
                            <asp:TextBox ID="txtform" runat="server" Width="291px" CssClass="form-control" AutoPostBack="True"></asp:TextBox>
                            <h4><cc1:CalendarExtender ID="cal1" PopupButtonID="TextBox1" runat="server" TargetControlID="txtform" Format="dd/MM/yyyy"/></h4>
                        </td>
                        <td style="width: 40px"><h4>to</h4></td>
                        <td>
                            <asp:TextBox ID="txtto" runat="server" Width="291px" CssClass="form-control" AutoPostBack="True" onchange="date()"></asp:TextBox>
                            <h4><cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="TextBox1" runat="server" TargetControlID="txtto" Format="dd/MM/yyyy"/></h4>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <asp:Button CssClass="btn btn-block btn-primary btn-sm" Width="100px" ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                <br />
                <h4><asp:Label ID="Label1" runat="server"></asp:Label></h4>
                <p>
                    <asp:HiddenField ID="hf1" runat="server" />
                </p>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
</asp:UpdatePanel>
    <script>
        function date() {
            var d1 = document.getElementById('<%= txtform.ClientID %>').value;
            var d1parts = d1.split("/");
            var d1Object = new Date(+d1parts[2], d1parts[1] - 1, +d1parts[0]);

            var x = document.getElementById('<%= hf1.ClientID %>').value;

            var d2 = document.getElementById('<%= txtto.ClientID %>').value;
            var d2parts = d2.split("/");
            var d2Object = new Date(+d2parts[2], d2parts[1] - 1, +d2parts[0]);

            if (d1Object > d2Object) {
                alert("To date must be greater");
                document.getElementById('<%= txtto.ClientID %>').value = x
            }
        }
    </script>
</asp:Content>
