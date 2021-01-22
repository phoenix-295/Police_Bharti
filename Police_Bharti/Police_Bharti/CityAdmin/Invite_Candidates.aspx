<%@ Page Title="" Language="C#" MasterPageFile="~/CityAdmin/CityAdminMaster.Master" AutoEventWireup="true" CodeBehind="Invite_Candidates.aspx.cs" Inherits="Police_Bharti.CityAdmin.Invite_Candidates" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        function date() {
            var d1 = document.getElementById('<%= lblfrom.ClientID %>').textContent;
            var d1parts = d1.split("/");
            var d1Object = new Date(+d1parts[2], d1parts[1] - 1, +d1parts[0]);

            var d2 = document.getElementById('<%= lblto.ClientID %>').textContent;
            var d2parts = d2.split("/");
            var d2Object = new Date(+d2parts[2], d2parts[1] - 1, +d2parts[0]);

            var d3 = document.getElementById('<%= txtdate.ClientID %>').value;
            var d3parts = d3.split("/");
            var d3Object = new Date(+d3parts[2], d3parts[1] - 1, +d3parts[0]); 

            if ((d3Object < d1Object)) {
                alert("Date Must be greater than Start date")
                document.getElementById('<%= txtdate.ClientID %>').value = ""
            }

            if ((d3Object > d2Object)) {
                alert("Date Must be smaller than end date")
                document.getElementById('<%= txtdate.ClientID %>').value = ""
            }
        }
    </script>
    <asp:UpdatePanel ID="panel1" runat="server">
            <ContentTemplate>
    <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td><cc1:toolkitscriptmanager ID="toolScriptManageer1" runat="server"></cc1:toolkitscriptmanager> 
                
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
            
            <td><h5>Dates given by District Admin: </h5></td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 162px">
                            
                            <h5><asp:Label ID="lblfrom" runat="server"></asp:Label></h5>
                            
                        </td>
                        <td style="width: 80px"><h5>to</h5></td>
                        <td>
                            
                            <h5><asp:Label ID="lblto" runat="server"></asp:Label></h5>
                            
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px; height: 30px;"></td>
            
            <td style="height: 30px"></td>
            <td style="height: 30px"></td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            
            <td><h5>Send Invite:</h5></td>
            <td>&nbsp;</td>
        </tr>

        <tr>
            <td style="width:175px">&nbsp;</td>
            
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 338px">
                <asp:TextBox ID="txtno" runat="server" CssClass="form-control" Width="291px" placeholder="Number of Records to Invite"></asp:TextBox>
                        </td>
                        <td>
                <asp:TextBox ID="txtdate" runat="server" CssClass="form-control" Width="291px" placeholder="Pick a date" AutoPostBack="True" onchange="date()"></asp:TextBox>
                      <cc1:CalendarExtender ID="cal1" PopupButtonID="TextBox1" runat="server" TargetControlID="txtdate" Format="dd/MM/yyyy"/>      
                        </td>
                    </tr>
                </table>
            </td>
            <td><h4></h4></td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <asp:Button ID="btnupdate" runat="server" Text="Invite" OnClick="btnupdate_Click" />
                <br />
                <h4><asp:Label ID="Label1" runat="server"></asp:Label></h4>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
