<%@ Page Title="Physical test" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="City_Physical_Test.aspx.cs" Inherits="Police_Bharti.City_Physical.City_Physical_Test" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="MainScriptManager" runat="server" />
    
        <asp:UpdatePanel ID="panel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <asp:PostBackTrigger ControlID="btnsub" />
                
            </Triggers>
            <ContentTemplate>

    <table class="w-100">
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <br />
                <table class="w-100">
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 115px">
                                        <h4>Date: </h4>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="290px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td rowspan="8">&nbsp;</td>
                        <td rowspan="8">&nbsp;</td>
                        <td rowspan="8">&nbsp;</td>
                        <td style=" width:300px; vertical-align:top" rowspan="4">
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
                      Remaning Candidates <span class="float-right badge bg-danger">
                          <asp:Label ID="lblremaning" runat="server" Text=""></asp:Label></span>
                    </a>
                  </li>

                    <li class="nav-item">
                    <a class="nav-link">
                      Done Candidates <span class="float-right badge bg-success">
                          <asp:Label ID="Label2" runat="server" Text=""></asp:Label></span>
                    </a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link">
                      Absent Candidates <span class="float-right badge bg-dark">
                          <asp:Label ID="lblinvited" runat="server" Text=""></asp:Label></span>
                    </a>
                  </li>
                  
                  
                  
                </ul>
              </div>
            </div>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 115px">
                                        <h4>Candidate: </h4>
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="290px">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 107px">
                                        <h4>Name: </h4>
                                    </td>
                                    <td style="width: 176px">
                                        <h6>
                                            <asp:Label ID="lblname" runat="server"></asp:Label>
                                        </h6>
                                    </td>
                                    <td style="width: 155px">
                                        <h4>Date Of Birth: </h4>
                                    </td>
                                    <td style="width: 168px">
                                        <h6>
                                            <asp:Label ID="lbldob" runat="server"></asp:Label>
                                        </h6>
                                    </td>
                                    <td style="width: 94px">
                                        <h4>Gender: </h4>
                                    </td>
                                    <td>
                                        <h6>
                                            <asp:Label ID="lblg" runat="server"></asp:Label>
                                        </h6>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">&nbsp;</td>
                        <td rowspan="4" style=" width:300px; vertical-align:top">
                            <div class="card card-blue shadow-sm collapsed-card">
              <div class="card-header">
                <h3 class="card-title">Height Creteria</h3>

                <div class="card-tools">
                  <button type="button" class="btn btn-tool" data-card-widget="collapse">
                    <i class="fas fa-plus"></i>
                  </button>
                </div>
                <!-- /.card-tools -->
              </div>
              <!-- /.card-header -->
              <div class="card-body">
                Male : &nbsp; > 165 cms
              </div>
                <div class="card-body">
                Female : &nbsp; >155 cms
              </div>
              <!-- /.card-body -->
            </div>

                            <table class="w-100">
                                <tr>
                                                    <td rowspan="4" style=" width:300px; vertical-align:top">
                                        <div class="card card-success shadow-sm collapsed-card">
                          <div class="card-header">
                            <h3 class="card-title">Male Chest Creteria</h3>

                            <div class="card-tools">
                              <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-plus"></i>
                              </button>
                            </div>
                            <!-- /.card-tools -->
                          </div>
                          <!-- /.card-header -->
                          <div class="card-body">
                            Minimun : &nbsp; > 79 cms
                          </div>
                            <div class="card-body">
                            Maximum : &nbsp; Minimum + 5 cms
                          </div>
                          <!-- /.card-body -->
                        </div>

                        </td>
                                </tr>
                            </table>

                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 107px">
                                        <h4>Category: </h4>
                                    </td>
                                    <td style="width: 176px">
                                        <h6>
                                            <asp:Label ID="lblcategory" runat="server"></asp:Label>
                                        </h6>
                                    </td>
                                    <td style="width: 155px">
                                        <h4>Cast: </h4>
                                    </td>
                                    <td style="width: 168px">
                                        <h6>
                                            <asp:Label ID="lblcast" runat="server"></asp:Label>
                                        </h6>
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 103px">
                                        <h4>Height:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txtheight" runat="server" CssClass="form-control" onchange="chk_h()" placeholder="Enter Height in cms" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqh0" runat="server" ControlToValidate="txtheight" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtheight" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px; height: 30px"></td>
                                    <td style="height: 30px">
                                        <asp:HiddenField ID="hr" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px">
                                        <h4>
                                            <asp:Label ID="Label1" runat="server" Text="Chest:"></asp:Label>
                                        </h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 310px; height: 31px;">
                                                    <asp:TextBox ID="txtchest" runat="server" CssClass="form-control" onchange="chk_c()" placeholder="Enter chest in cms" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                <td style="width: 310px; height: 31px;">
                                                    <asp:TextBox ID="txtmaxchest" runat="server" CssClass="form-control" onchange="chk_c()" placeholder="Enter chest in cms" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                <td style="width: 105px; height: 31px;">
                                                    <asp:Label ID="lblcr" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 31px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtchest" ErrorMessage="Chest is Required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rec" runat="server" ControlToValidate="txtchest" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                                <td style="height: 31px">
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmaxchest" ErrorMessage="Chest is Required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ControlToValidate="txtmaxchest" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px">&nbsp;</td>
                                    <td>
                                        <asp:HiddenField ID="cr" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px">
                                        <h4>Weight:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 311px">
                                                    <asp:TextBox ID="txtweight" runat="server" CausesValidation="True" CssClass="form-control" placeholder="Enter weight in kg" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqw0" runat="server" ControlToValidate="txtweight" ErrorMessage="Weight is Required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rew" runat="server" ControlToValidate="txtweight" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px; height: 30px;"></td>
                                    <td style="height: 30px">
                                        <asp:Label ID="lblres" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px">
                                        <h4>
                                            <asp:Label ID="lblr1" runat="server"></asp:Label>
                                        </h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px; height: 41px;"></td>
                                    <td style="height: 41px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 138px">
                                                    <asp:Button ID="btnsub" runat="server" CssClass="btn btn-primary" OnClick="btnsub_Click" Text="Submit" ValidationGroup="1" />
                                                </td>
                                                <td>
                                                    <asp:Button CssClass="btn btn-danger" ID="btnabs" runat="server" Text="Absent" OnClick="btnabs_Click" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 103px">&nbsp;</td>
                                    <td></td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</ContentTemplate>
</asp:UpdatePanel>
     <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <script>
        function chk_h() {
            var h1 = document.getElementById('<%= txtheight.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if (h1 >= 165) {
                    document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                    document.getElementById('<%= hr.ClientID %>').value = "Pass";
                }
                else {
                    document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                    document.getElementById('<%= hr.ClientID %>').value = "Fail";
                }
            }

            if (g == "F") {
                if (h1 > 155) {
                    document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                    document.getElementById('<%= hr.ClientID %>').value = "Pass";
                }
                else {
                    document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                    document.getElementById('<%= hr.ClientID %>').value = "Fail";
                }
            }
        }
        function chk_c() {
            var c1 = document.getElementById('<%= txtchest.ClientID %>').value;
            var c2 = document.getElementById('<%= txtmaxchest.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if ((c1 > 78) && ((c2-c1) > 4)) {
                    document.getElementById('<%= lblcr.ClientID %>').textContent = "Pass";
                    document.getElementById('<%= cr.ClientID %>').value = "Pass";
                }
                else {
                    document.getElementById('<%= lblcr.ClientID %>').textContent = "Fail";
                    document.getElementById('<%= cr.ClientID %>').value = "Fail";
                }
            }
        }
        
    </script>
</asp:Content>
