﻿<%@ Page Title="" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="City_Physical_Ground.aspx.cs" Inherits="Police_Bharti.City_Physical.City_Physical_Ground" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="MainScriptManager" runat="server" />
    
        <asp:UpdatePanel ID="panel1" runat="server" UpdateMode="Conditional">
            <Triggers>
                <%--<asp:PostBackTrigger ControlID="btnsub" />--%>
                
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
                                            <asp:Label ID="Label8" runat="server" Text="Chest:"></asp:Label>
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
                                        <asp:Label ID="Label9" runat="server"></asp:Label>
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
                                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="btnsub_Click" Text="Submit" ValidationGroup="1" />
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

    <table class="w-100">
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 115px"><h4>&nbsp;</h4></td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 115px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 107px"><h4>Name: </h4></td>
                        <td style="width: 176px">
                            <h6>&nbsp;</h6>
                        </td>
                        <td style="width: 155px"><h4>Date Of Birth: </h4></td>
                        <td style="width: 168px">
                            <h6>&nbsp;</h6>
                        </td>
                        <td style="width: 94px"><h4>Gender: </h4></td>
                        <td>
                            <h6>&nbsp;</h6>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr style="height:20px">
            <td style="width: 175px">&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 107px"><h4>Category: </h4></td>
                        <td style="width: 176px">
                            <h6>
                                &nbsp;</h6>
                        </td>
                        <td style="width: 155px"><h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cast: </h4></td>
                        <td style="width: 168px">
                            <h6>

                                &nbsp;</h6>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width: 150px"><h4>
                            <asp:Label ID="Label2" runat="server" Text="1600 Meters:"></asp:Label></h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 140px">
                            <asp:TextBox placeholder="mm.ss" CssClass="form-control" Width="100px" ID="txt1600m" runat="server" onchange="chk_16()" ValidationGroup="1" ToolTip="Enter time in mm.ss" TabIndex="1"></asp:TextBox>
                                    </td>
                                    <td style="width: 200px">
                                        <table class="w-100" style="width: 131%">
                                            <tr>
                                                <td style="width: 107px">
                                                    <asp:Label ID="lbl16" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rq16" runat="server" ControlToValidate="txt1600m" Display="Dynamic" ErrorMessage="1600 cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="re16" runat="server" ControlToValidate="txt1600m" Display="Dynamic" ErrorMessage="Proper Format." SetFocusOnError="True" ValidationExpression="^(1[0-2]|0?[1-9]).([0-5][0-9]?)" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width:150px">
                                                    &nbsp;</td>
                                                <td style="width:108px">
                                                    &nbsp;</td>
                                                <td>
                                                    <table class="w-100">
                                                        <tr>
                                                            <td style="width: 74px">
                                                                &nbsp;</td>
                                                            <td style="width: 16px">
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 30px"></td>
                        <td style="height: 30px">
                            <asp:HiddenField ID="r16" runat="server" />
                            <asp:HiddenField ID="r100" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px"><h4>
                            <asp:Label ID="Label1" runat="server" Text="800 Meters:"></asp:Label></h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 142px; height: 31px;">
                            <asp:TextBox placeholder="mm.ss" CssClass="form-control" onchange="chk_8()" Width="100px" ID="txt800m" runat="server" ValidationGroup="1" TabIndex="2"></asp:TextBox>
                                    </td>
                                    <td style="width: 105px; height: 31px;">
                                        <asp:Label ID="lbl8" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                    <td style="height: 31px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 37px">
                                                    <asp:RequiredFieldValidator ID="rq800" runat="server" ControlToValidate="txt800m" Display="Dynamic" ErrorMessage="800m cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="re800" runat="server" ControlToValidate="txt800m" Display="Dynamic" ErrorMessage="800m result must be in proper format." SetFocusOnError="True" ValidationExpression="^(1[0-2]|0?[1-9]).([0-5][0-9]?)" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px">&nbsp;</td>
                        <td>
                            <asp:HiddenField ID="r8" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px">
                            <h4>100 Meters:</h4>
                        </td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 146px">
                                        <asp:TextBox ID="txt100m" runat="server" CssClass="form-control" onchange="chk_1()" placeholder="ss.msms" TabIndex="3" ToolTip="Enter time in ss.msms" Width="100px"></asp:TextBox>
                                    </td>
                                    <td style="width: 86px">
                                        <asp:Label ID="lbl10" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 37px">
                                                    <asp:RequiredFieldValidator ID="rq10" runat="server" ControlToValidate="txt100m" Display="Dynamic" ErrorMessage="100m cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <asp:RegularExpressionValidator ID="re100" runat="server" ControlToValidate="txt100m" Display="Dynamic" ErrorMessage="100m result must be in proper range." SetFocusOnError="True" ValidationExpression="^([0-5][0-9]?).([0-5][0-9]?)" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px">&nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 150px"><h4>Long Jump:</h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 311px">
                            <asp:TextBox placeholder="Enter Distance in m" CssClass="form-control" Width="290px" onchange="chk_lj()" ID="txtlj" runat="server" ValidationGroup="1" CausesValidation="True" TabIndex="4"></asp:TextBox>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 109px">
                                                    <asp:Label ID="lbllj" runat="server" style="color: #008000"></asp:Label>
                                                </td>
                                                <td style="width: 23px">
                                                    <asp:RequiredFieldValidator ID="rqlj" runat="server" ControlToValidate="txtlj" Display="Dynamic" ErrorMessage="Long jump cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td>
                                                    <asp:RangeValidator ID="rnlj" runat="server" ControlToValidate="txtlj" ErrorMessage="Long jump value must be in proper format." MaximumValue="100" MinimumValue="0.2" SetFocusOnError="True" Type="Double" ValidationGroup="1">*</asp:RangeValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 30px;"></td>
                        <td style="height: 30px">
                            <asp:HiddenField ID="hlj" runat="server" />
                        </td>
                        
                        
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 30px;"><h4>Shot Put: </h4></td>
                        <td style="height: 30px">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 305px">
                                        <asp:TextBox ID="txtsp" runat="server" CssClass="form-control" placeholder="Enter distance in m" TabIndex="5" Width="291px" onchange="chk_sp()"></asp:TextBox>
                                        <asp:HiddenField ID="hsp" runat="server" />
                                    </td>
                                    <td style="width: 121px">
                                        <asp:Label ID="lblsp" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                    <td style="width: 20px">
                                        <asp:RequiredFieldValidator ID="reqsp" runat="server" ControlToValidate="txtsp" Display="Dynamic" ErrorMessage="Shot put cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 52px">
                                                    <asp:RangeValidator ID="rnsp" runat="server" ControlToValidate="txtsp" Display="Dynamic" ErrorMessage="Shot put result must be in proper format" MaximumValue="15" MinimumValue="1" Type="Double" ValidationGroup="1">*</asp:RangeValidator>
                                                </td>
                                                <td>
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 30px;">&nbsp;</td>
                        <td style="height: 30px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 30px;"><h4><asp:Label ID="lblpullups" runat="server" Text="Pull ups:"></asp:Label></h4></td>
                        <td style="height: 30px">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 305px">
                                        <asp:TextBox ID="txtpull" runat="server" CssClass="form-control" placeholder="Enter count" TabIndex="5" Width="291px" onchange="chk_pu()"></asp:TextBox>
                                        <asp:HiddenField ID="hpu" runat="server" />
                                    </td>
                                    <td style="width: 121px">
                                        <asp:Label ID="lblpu" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                    <td style="width: 20px">
                                        <asp:RequiredFieldValidator ID="reqpu" runat="server" ControlToValidate="txtpull" Display="Dynamic" ErrorMessage="Pull ups count cannot be blank" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 52px">
                                                    <asp:RangeValidator ID="rnpu" runat="server" ControlToValidate="txtpull" Display="Dynamic" ErrorMessage="Pull ups result must be in proper format"  MinimumValue="0" Type="Integer" ValidationGroup="1" MaximumValue="30">*</asp:RangeValidator>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>



                    <tr>
                        <td style="width: 150px; height: 41px;">&nbsp;</td>
                        <td style="height: 41px">
                            <asp:Button ID="btnsub" runat="server" TabIndex="6" Text="Submit" ValidationGroup="1" OnClick="btnsub_Click" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px; height: 41px;"></td>
                        <td style="height: 41px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 150px">&nbsp;</td>
                        <td>
                           
                            <asp:Label ID="lblres" runat="server"></asp:Label>
                           
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 150px">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</ContentTemplate>
</asp:UpdatePanel>
     

    <script>
        //pull ups
        function chk_pu() {
            var pu = document.getElementById('<%= txtpull.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;

            if (g == "M") {
                if (pu >= 10) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "20";
                    document.getElementById('<%= hpu.ClientID %>').value = "20";
                }
                else if (pu == 9) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "16";
                    document.getElementById('<%= hpu.ClientID %>').value = "16";
                }
                else if (pu == 8) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "12";
                    document.getElementById('<%= hpu.ClientID %>').value = "12";
                }
                else if (pu == 7) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "08";
                    document.getElementById('<%= hpu.ClientID %>').value = "08";
                }
                else if (pu == 6) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "04";
                    document.getElementById('<%= hpu.ClientID %>').value = "04";
                }
                else if (pu == 5) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "02";
                    document.getElementById('<%= hpu.ClientID %>').value = "02";
                }
                else if (pu < 5) {
                    document.getElementById('<%= lblpu.ClientID %>').textContent = "00";
                    document.getElementById('<%= hpu.ClientID %>').value = "00";
                }
            }
        }
        //1600m m
        function chk_16() {
            var r16 = document.getElementById('<%= txt1600m.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if (r16 <= 4.50) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "20";
                    document.getElementById('<%= r16.ClientID %>').value = "20";
                }
                else if ((r16 > 4.50) && (r16 <= 5.1)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "18";
                    document.getElementById('<%= r16.ClientID %>').value = "18";
                }
                else if ((r16 > 5.1) && (r16 <= 5.3)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "16";
                    document.getElementById('<%= r16.ClientID %>').value = "16";
                }
                else if ((r16 > 5.3) && (r16 <= 5.5)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "14";
                    document.getElementById('<%= r16.ClientID %>').value = "14";
                }
                else if ((r16 > 5.5) && (r16 <= 6.1)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "12";
                    document.getElementById('<%= r16.ClientID %>').value = "12";
                }
                else if ((r16 > 6.1) && (r16 <= 6.3)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "10";
                    document.getElementById('<%= r16.ClientID %>').value = "10";
                }
                else if ((r16 > 6.3) && (r16 <= 6.5)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "6";
                    document.getElementById('<%= r16.ClientID %>').value = "6";
                }
                else if ((r16 > 6.5) && (r16 <= 7.1)) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "2";
                    document.getElementById('<%= r16.ClientID %>').value = "2";
                }
                else if (r16 > 7.1) {
                    document.getElementById('<%= lbl16.ClientID %>').textContent = "00";
                    document.getElementById('<%= r16.ClientID %>').value = "00";
                }
            }
        }

        //100m mf
        function chk_1() {
            var r1 = document.getElementById('<%= txt100m.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if (r1 <= 11.50) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "20";
                    document.getElementById('<%= r100.ClientID %>').value = "20";
                }
                else if ((r1 > 11.50) && (r1 <= 12.50)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "18";
                    document.getElementById('<%= r100.ClientID %>').value = "18";
                }
                else if ((r1 > 12.50) && (r1 <= 13.50)) {
                   document.getElementById('<%= lbl10.ClientID %>').textContent = "16";
                    document.getElementById('<%= r100.ClientID %>').value = "16";
                }
                else if ((r1 > 13.50) && (r1 <= 14.50)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "14";
                    document.getElementById('<%= r100.ClientID %>').value = "14";
                }
                else if ((r1 > 14.50) && (r1 <= 15.5)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "10";
                    document.getElementById('<%= r100.ClientID %>').value = "10";
                }
                else if ((r1 > 15.50) && (r1 <= 16.50)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "06";
                    document.getElementById('<%= r100.ClientID %>').value = "06";
                }
                else if ((r1 > 16.50) && (r1 <= 17.50)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "2";
                    document.getElementById('<%= r100.ClientID %>').value = "2";
                }
                else if (r1 > 17.50) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "0";
                    document.getElementById('<%= r100.ClientID %>').value = "0";
                }
            }
            if (g == "F") {
                if (r1 <= 15) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "22";
                    document.getElementById('<%= r100.ClientID %>').value = "22";
                }
                else if ((r1 > 15) && (r1 <= 17)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "18";
                    document.getElementById('<%= r100.ClientID %>').value = "18";
                }
                else if ((r1 > 17) && (r1 <= 18)) {
                   document.getElementById('<%= lbl10.ClientID %>').textContent = "10";
                    document.getElementById('<%= r100.ClientID %>').value = "10";
                }
                else if ((r1 > 18) && (r1 <= 19)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "06";
                    document.getElementById('<%= r100.ClientID %>').value = "06";
                }
                else if ((r1 > 19) && (r1 <= 20)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "02";
                    document.getElementById('<%= r100.ClientID %>').value = "02";
                }
                else if ((r1 > 20)) {
                    document.getElementById('<%= lbl10.ClientID %>').textContent = "00";
                    document.getElementById('<%= r100.ClientID %>').value = "00";
                }
                
            }
        }

        //long jump mf
        function chk_lj() {
            var r1 = document.getElementById('<%= txtlj.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if (r1 >= 5.00) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "20";
                    document.getElementById('<%= hlj.ClientID %>').value = "20";
                }
                else if ((r1 >= 4.75) && (r1 < 5.0)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "18";
                    document.getElementById('<%= hlj.ClientID %>').value = "18";
                }
                else if ((r1 >= 4.50) && (r1 < 4.75)) {
                   document.getElementById('<%= lbllj.ClientID %>').textContent = "16";
                    document.getElementById('<%= hlj.ClientID %>').value = "16";
                }
                else if ((r1 >= 4.25) && (r1 < 4.50)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "14";
                    document.getElementById('<%= hlj.ClientID %>').value = "14";
                }
                else if ((r1 >= 4.0) && (r1 < 4.25)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "12";
                    document.getElementById('<%= hlj.ClientID %>').value = "12";
                }
                else if ((r1 >= 3.50) && (r1 < 4.0)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "09";
                    document.getElementById('<%= hlj.ClientID %>').value = "09";
                }
                else if ((r1 >= 3.00) && (r1 < 3.50)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "06";
                    document.getElementById('<%= hlj.ClientID %>').value = "06";
                }
                else if ((r1 >= 2.5) && (r1 < 3.0)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "03";
                    document.getElementById('<%= hlj.ClientID %>').value = "03";
                }
                else if ((r1 < 2.5)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "0";
                    document.getElementById('<%= hlj.ClientID %>').value = "0";
                }
            }
            if (g == "F") {
                if (r1 >= 3.8) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "25";
                    document.getElementById('<%= hlj.ClientID %>').value = "25";
                }
                else if ((r1 >= 3.5) && (r1 < 3.8)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "21";
                    document.getElementById('<%= hlj.ClientID %>').value = "21";
                }
                else if ((r1 >= 3.2) && (r1 < 3.5)) {
                   document.getElementById('<%= lbllj.ClientID %>').textContent = "18";
                    document.getElementById('<%= hlj.ClientID %>').value = "18";
                }
                else if ((r1 >= 2.9) && (r1 < 3.2)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "15";
                    document.getElementById('<%= hlj.ClientID %>').value = "15";
                }
                else if ((r1 >= 2.6) && (r1 < 2.9)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "12";
                    document.getElementById('<%= hlj.ClientID %>').value = "12";
                }
                else if ((r1 >= 2.3) && (r1 < 2.6)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "09";
                    document.getElementById('<%= hlj.ClientID %>').value = "09";
                }
                else if ((r1 >= 2) && (r1 < 2.3)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "06";
                    document.getElementById('<%= hlj.ClientID %>').value = "06";
                }
                else if ((r1 >= 1.7) && (r1 <= 2)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "03";
                    document.getElementById('<%= hlj.ClientID %>').value = "03";
                }
                else if ((r1 < 1.7)) {
                    document.getElementById('<%= lbllj.ClientID %>').textContent = "0";
                    document.getElementById('<%= hlj.ClientID %>').value = "0";
                }
            }
        }


        //sp mf
        function chk_sp() {
            var r1 = document.getElementById('<%= txtsp.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "M") {
                if (r1 >= 8.50) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "20";
                    document.getElementById('<%= hsp.ClientID %>').value = "20";
                }
                else if ((r1 >= 7.90) && (r1 < 8.50)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "18";
                    document.getElementById('<%= hsp.ClientID %>').value = "18";
                }
                else if ((r1 >= 7.30) && (r1 < 7.9)) {
                   document.getElementById('<%= lblsp.ClientID %>').textContent = "16";
                    document.getElementById('<%= hsp.ClientID %>').value = "16";
                }
                else if ((r1 >= 6.70) && (r1 < 7.30)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "14";
                    document.getElementById('<%= hsp.ClientID %>').value = "14";
                }
                else if ((r1 >= 6.10) && (r1 < 6.70)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "12";
                    document.getElementById('<%= hsp.ClientID %>').value = "12";
                }
                else if ((r1 >= 5.50) && (r1 < 6.10)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "10";
                    document.getElementById('<%= hsp.ClientID %>').value = "10";
                }
                else if ((r1 >= 4.90) && (r1 < 5.50)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "08";
                    document.getElementById('<%= hsp.ClientID %>').value = "08";
                }
                else if ((r1 >= 4.30) && (r1 < 4.90)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "06";
                    document.getElementById('<%= hsp.ClientID %>').value = "06";
                }
                else if ((r1 >= 3.70) && (r1 < 4.30)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "04";
                    document.getElementById('<%= hsp.ClientID %>').value = "04";
                }
                else if ((r1 >= 3.10) && (r1 < 3.70)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "02";
                    document.getElementById('<%= hsp.ClientID %>').value = "02";
                }
                else if ((r1 < 3.10)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "00";
                    document.getElementById('<%= hsp.ClientID %>').value = "00";
                }
            }
            if (g == "F") {
                if (r1 >= 6.00) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "25";
                    document.getElementById('<%= hsp.ClientID %>').value = "25";
                }
                else if ((r1 >= 5.50) && (r1 < 6.0)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "20";
                    document.getElementById('<%= hsp.ClientID %>').value = "20";
                }
                else if ((r1 >= 5.00) && (r1 < 5.50)) {
                   document.getElementById('<%= lblsp.ClientID %>').textContent = "15";
                    document.getElementById('<%= hsp.ClientID %>').value = "15";
                }
                else if ((r1 >= 4.50) && (r1 < 5.00)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "10";
                    document.getElementById('<%= hsp.ClientID %>').value = "10";
                }
                else if ((r1 >= 4.00) && (r1 < 4.50)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "05";
                    document.getElementById('<%= hsp.ClientID %>').value = "05";
                }
                else if ((r1 < 4.00)) {
                    document.getElementById('<%= lblsp.ClientID %>').textContent = "00";
                    document.getElementById('<%= hsp.ClientID %>').value = "00";
                }
            }
        }


        //800m f
        function chk_8() {
            var r1 = document.getElementById('<%= txt800m.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            if (g == "F") {
                if (r1 <= 2.40) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "25";
                    document.getElementById('<%= r8.ClientID %>').value = "25";
                }
                else if ((r1 > 2.40) && (r1 <= 2.50)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "22";
                    document.getElementById('<%= r8.ClientID %>').value = "22";
                }
                else if ((r1 > 2.50) && (r1 <= 3.0)) {
                   document.getElementById('<%= lbl8.ClientID %>').textContent = "18";
                    document.getElementById('<%= r8.ClientID %>').value = "18";
                }
                else if ((r1 > 3.0) && (r1 <= 3.10)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "14";
                    document.getElementById('<%= r8.ClientID %>').value = "14";
                }
                else if ((r1 > 3.10) && (r1 <= 3.2)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "10";
                    document.getElementById('<%= r8.ClientID %>').value = "10";
                }
                else if ((r1 > 3.20) && (r1 <= 3.30)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "06";
                    document.getElementById('<%= r8.ClientID %>').value = "06";
                }
                else if ((r1 > 3.30) && (r1 <= 3.40)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "4";
                    document.getElementById('<%= r8.ClientID %>').value = "4";
                }
                else if ((r1 > 3.40) && (r1 <= 3.5)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "2";
                    document.getElementById('<%= r8.ClientID %>').value = "2";
                }
                else if ((r1 > 3.5)) {
                    document.getElementById('<%= lbl8.ClientID %>').textContent = "0";
                    document.getElementById('<%= r8.ClientID %>').value = "0";
                }
            }
        }
    </script>
</asp:Content>
