<%@ Page Title="" Language="C#" MasterPageFile="~/GraminAdmin/GraminAdminMaster.Master" AutoEventWireup="true" CodeBehind="Invite_Candidates.aspx.cs" Inherits="Police_Bharti.GraminAdmin.Invite_Candidates" %>
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
                <table class="w-100">
                    <tr>
                        <td style="vertical-align:top">
                            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="291px">
                                <asp:ListItem>Physical Test</asp:ListItem>
                                <asp:ListItem>Written Test</asp:ListItem>
                                <asp:ListItem>Medical Test</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td rowspan="4">&nbsp;</td>
                        <td rowspan="4">&nbsp;</td>
                        <td rowspan="4" style="width: 46px">&nbsp;</td>
                        <td style="width:300px" rowspan="4">
                            <div class="card card-widget widget-user-2">
              <!-- Add the bg color to the header using any of the bg-* classes -->
              <div class="bg-info">
                
                <!-- /.widget-user-image -->
                <h3 class="widget-user-username">Candidate Info</h3>
                
              </div>
              <div class="card-footer p-0">
                <ul class="nav flex-column">
                  <li class="nav-item">
                    <a class="nav-link">
                      Total Candidates <span class="float-right badge bg-primary">
                          <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label></span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link">
                      Invited Candidates <span class="float-right badge bg-success">
                          <asp:Label ID="lblinvited" runat="server" Text=""></asp:Label>
                                         </span>
                    </a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link">
                      Remaning Candidates <span class="float-right badge bg-danger">
                          <asp:Label ID="lblremaning" runat="server" Text=""></asp:Label>
                                          </span>
                    </a>
                  </li>
                  
                </ul>
              </div>
            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <h5>Dates given by District Admin: </h5>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 162px; height: 21px;">
                                        <h5>
                                            <asp:Label ID="lblfrom" runat="server"></asp:Label>
                                        </h5>
                                    </td>
                                    <td style="width: 80px; height: 21px;">
                                        <h5>to</h5>
                                    </td>
                                    <td style="height: 21px">
                                        <h5>
                                            <asp:Label ID="lblto" runat="server"></asp:Label>
                                        </h5>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <h5>Send Invite:</h5>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 338px">
                                        <asp:TextBox ID="txtno" runat="server" CssClass="form-control" placeholder="Number of Records to Invite" Width="291px"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtdate" runat="server" AutoPostBack="True" CssClass="form-control" onchange="date()" placeholder="Pick a date" Width="291px"></asp:TextBox>
                                        <cc1:CalendarExtender ID="cal1" runat="server" Format="dd/MM/yyyy" PopupButtonID="TextBox1" TargetControlID="txtdate" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary" OnClick="btnupdate_Click" Text="Invite" />
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style="width: 46px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
                </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>
