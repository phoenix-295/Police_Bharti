<%@ Page Title="" Language="C#" MasterPageFile="~/CityWritten/CityWrittenMaster.Master" AutoEventWireup="true" CodeBehind="City_Written_Test.aspx.cs" Inherits="Police_Bharti.CityWritten.City_Written_Test" %>
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
                                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="290px" TabIndex="1">
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
                                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="form-control" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Width="290px" TabIndex="2">
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
                                    <td style="width: 198px">
                                        <h4>Marathi:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txtmar" runat="server" CssClass="form-control" onchange="chk_m()" placeholder="Enter Marathi score" ValidationGroup="1" Width="290px" TabIndex="3"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqmar" runat="server" ControlToValidate="txtmar" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtmar" ErrorMessage="Only 1-2 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{1,2}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px"></td>
                                    <td style="height: 30px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 198px">
                                        <h4>English:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txteng" runat="server" CssClass="form-control" onchange="chk_e()" placeholder="Enter English score" ValidationGroup="1" Width="290px" TabIndex="4"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr0" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqeng" runat="server" ControlToValidate="txteng" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txteng" ErrorMessage="Only 1-2 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{1,2}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px">&nbsp;</td>
                                    <td style="height: 30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 198px">
                                        <h4>Reasoning ability:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txtren" runat="server" CssClass="form-control" onchange="chk_r()" placeholder="Enter Reasoning ability score" ValidationGroup="1" Width="290px" TabIndex="5"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr1" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqra" runat="server" ControlToValidate="txtren" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtren" ErrorMessage="Only 1-2 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{1,2}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px">&nbsp;</td>
                                    <td style="height: 30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 198px">
                                        <h4>GK & Current Affairs:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txtgca" runat="server" CssClass="form-control" onchange="chk_g()" placeholder="Enter GK Score" ValidationGroup="1" Width="290px" TabIndex="6"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr2" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqgk" runat="server" ControlToValidate="txtgca" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtgca" ErrorMessage="Only 1-2 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{1,2}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px">&nbsp;</td>
                                    <td style="height: 30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 198px">
                                        <h4>History & Geography</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:TextBox ID="txthg" runat="server" CssClass="form-control" onchange="chk_h()" placeholder="Enter History & geography score" ValidationGroup="1" Width="290px" TabIndex="7"></asp:TextBox>
                                                </td>
                                                <td style="width: 108px">
                                                    <asp:Label ID="lblhr3" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqhg" runat="server" ControlToValidate="txthg" Display="Dynamic" ErrorMessage="Height is required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txthg" ErrorMessage="Only 1-2 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{1,2}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px"></td>
                                    <td style="height: 30px"></td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px;"></td>
                                    <td style="height: 30px">
                                        <asp:Label ID="lblres" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px">
                                        <h4>
                                            <asp:Label ID="lblr1" runat="server"></asp:Label>
                                        </h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px; height: 41px;"></td>
                                    <td style="height: 41px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 138px">
                                                    <asp:Button ID="btnsub" runat="server" CssClass="btn btn-primary" Text="Submit" ValidationGroup="1" OnClick="btnsub_Click" TabIndex="8" />
                                                </td>
                                                <td>
                                                    <asp:Button CssClass="btn btn-danger" ID="btnabs" runat="server" Text="Absent" OnClick="btnabs_Click" TabIndex="9" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 198px">&nbsp;</td>
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
        function chk_m() {
            var mar = document.getElementById('<%= txtmar.ClientID %>').value;
            
            if (mar > 25)
            {
                alert("Marks cannot be greater than 25!")
                    document.getElementById('<%= txtmar.ClientID %>').value = "";
            }
                
        }

        function chk_e() {
            var mar = document.getElementById('<%= txteng.ClientID %>').value;
            
            if (mar > 25) {
                alert("Marks cannot be greater than 25!")
                    document.getElementById('<%= txteng.ClientID %>').value = "";
                }
                
        }

            
        function chk_r() {
            var mar = document.getElementById('<%= txtren.ClientID %>').value;
            
            if (mar > 25)
            {
                alert("Marks cannot be greater than 25!")
                    document.getElementById('<%= txtren.ClientID %>').value = "";
            }
                
         }

         function chk_g() {
            var mar = document.getElementById('<%= txtgca.ClientID %>').value;
            
            if (mar > 25)
            {
                alert("Marks cannot be greater than 25!")
                    document.getElementById('<%= txtgca.ClientID %>').value = "";
            }
                
         }

         function chk_h() {
            var mar = document.getElementById('<%= txthg.ClientID %>').value;
            
            if (mar > 25)
            {
                alert("Marks cannot be greater than 25!")
                    document.getElementById('<%= txthg.ClientID %>').value = "";
            }
                
        }
        
    </script>
    
</asp:Content>
