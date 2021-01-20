<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Plan_City_Event.aspx.cs" Inherits="Police_Bharti.Admin.Plan_City_Event" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function date() {
            var d1 = new Date(document.getElementById('<%= txtform.ClientID %>').value);
            var d2 = new Date(document.getElementById('<%= txtto.ClientID %>').value);
            var d3 = document.getElementById('<%= txtto.ClientID %>').value;
            //t1 = document.getElementById("txtfrom").value;
            //t2 = document.getElementById("txtto").value;

            if (d1 > d2) {
                alert("To date must be greater");
                document.getElementById('<%= txtto.ClientID %>').value = ""
            }
            
        }
    </script>
               
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
                <asp:DropDownList ID="DropDownList1" CssClass="form-control" runat="server" Width="291px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
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
                <asp:Button ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                <br />
                <h4><asp:Label ID="Label1" runat="server"></asp:Label></h4>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
