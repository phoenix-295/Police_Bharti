<%@ Page Title="Medical Tests" Language="C#" MasterPageFile="~/CityMedical/CityMedicalMaster.Master" AutoEventWireup="true" CodeBehind="City_Medical_Test.aspx.cs" Inherits="Police_Bharti.CityMedical.City_Medical_Test" %>
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
                            <div style="width:300px" class="card card-widget widget-user-2">
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
                          <asp:Label ID="lbldone" runat="server" Text=""></asp:Label></span>
                    </a>
                  </li>

                  <li class="nav-item">
                    <a class="nav-link">
                      Absent Candidates <span class="float-right badge bg-dark">
                          <asp:Label ID="lblabs" runat="server" Text=""></asp:Label></span>
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
                            


                            <table class="w-100">
                                <tr>
                                    <td>
                                        
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;</td>
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
                        <td style="vertical-align:top">
                            <asp:HiddenField ID="hemail" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td style="vertical-align:top">
                            <table class="w-100">
                                <tr>
                                    <td style="width: 217px">
                                        <h4>Height:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 306px">
                                                    <asp:Label ID="lblheight" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td style="width: 108px">
                                                    &nbsp;</td>
                                                
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px"></td>
                                    <td style="height: 30px">
                                        <asp:HiddenField ID="hr" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">
                                        <h4>
                                            <asp:Label ID="Label1" runat="server" Text="Age:"></asp:Label>
                                        </h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 310px; height: 31px;">
                                                    <asp:TextBox ID="txtage" runat="server" CssClass="form-control"  placeholder="Enter age" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                
                                                <td style="width: 105px; height: 31px;">
                                                    <asp:Label ID="lblcr" runat="server" style="color: #008000"></asp:Label>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtage" ErrorMessage="Chest is Required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rec" runat="server" ControlToValidate="txtage" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 31px">
                                                    &nbsp;</td>
                                                
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>
                                        <asp:HiddenField ID="cr" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">
                                        <h4>Weight:</h4>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 311px">
                                                    <asp:TextBox ID="txtweight" runat="server" CausesValidation="True" CssClass="form-control" placeholder="Enter weight in kg" onchange="chk_w()" ValidationGroup="1" Width="290px"></asp:TextBox>
                                                </td>
                                                <td><asp:Label ID="lblhr" runat="server" style="color: #008000"></asp:Label></td>
                                                <td>
                                                    <asp:RequiredFieldValidator ID="rqw0" runat="server" ControlToValidate="txtweight" ErrorMessage="Weight is Required" SetFocusOnError="True" style="color: #FF0000" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                    <asp:RegularExpressionValidator ID="rew" runat="server" ControlToValidate="txtweight" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px">
                                        <asp:HiddenField ID="hfweight" runat="server" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Eye Test :</h4></td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 310px; height: 31px;">
                                                    <h5>Eye Sight and Squint:</h5>
                                                </td>
                                                <td style="width: 310px; height: 31px;">
                                                   <h5> <asp:RadioButton ID="rbpass" Text="Pass" runat="server" GroupName="grpEyePass" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="rbfail" Text="Fail" runat="server" GroupName="grpEyePass" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" /></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td style="height: 30px"></td>
                                    
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px"></td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Ear Test:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 159px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="earPass" Text="Pass" runat="server" GroupName="grpEarPass" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="earFail" Text="Fail" runat="server" GroupName="grpEarPass" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                                <td style="width: 35px; height: 30px;"><h4 style="width: 125px">Nose Test</h4></td>
                                                <td style="width: 127px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="nosePass" Text="Pass" runat="server" GroupName="grpNosePass" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="noseFail" Text="Fail" runat="server" GroupName="grpNosePass" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px"></td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Physical Handicapped:</h4></td>
                                    <td style="height: 30px"> 
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 128px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="handiPass" Text="Pass" runat="server" GroupName="grpHandiPass" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="handiFail" Text="Fail" runat="server" GroupName="grpHandiPass" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table></td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Knocking Knees:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="kneePass" Text="Pass" runat="server" GroupName="knockingKnee" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="kneeFail" Text="Fail" runat="server" GroupName="knockingKnee" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Pigeon chest:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="pChestPass" Text="Pass" runat="server" GroupName="pigeonChest" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="pChestFail" Text="Fail" runat="server" GroupName="pigeonChest" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Flat Foot:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="footPass" Text="Pass" runat="server" GroupName="flatFoot" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="footFail" Text="Fail" runat="server" GroupName="flatFoot" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Varicose Veins:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="vvPass" Text="Pass" runat="server" GroupName="varicoseVeins" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="vvFail" Text="Fail" runat="server" GroupName="varicoseVeins" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Fractured Limbs:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="fracturedLimbPass" Text="Pass" runat="server" GroupName="fracturedLimbs" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="fracturedLimbFail" Text="Fail" runat="server" GroupName="fracturedLimbs" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Decayed Teeth:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                   <h5> <asp:RadioButton ID="teethPass" Text="Pass" runat="server" GroupName="decayedTeeth" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="teethFail" Text="Fail" runat="server" GroupName="decayedTeeth" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Stammering:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="stammeringPass" Text="Pass" runat="server" GroupName="stammering" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="stammeringFail" Text="Fail" runat="server" GroupName="stammering" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Hallux Rigidus:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="hrPass" Text="Pass" runat="server" GroupName="halluxRigidus" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="hrFail" Text="Fail" runat="server" GroupName="halluxRigidus" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Skin Diesease:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="sdPass" Text="Pass" runat="server" GroupName="skinDisease" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="sdFail" Text="Fail" runat="server" GroupName="skinDisease" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Heartbeats:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="hbPass" Text="Pass" runat="server" GroupName="heartbeat" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="hbFail" Text="Fail" runat="server" GroupName="heartbeat" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Fingure's Deformity:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="fdPass" Text="  Pass" runat="server" GroupName="fingureDeformity" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="fdFail" Text="  Fail" runat="server" GroupName="fingureDeformity" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr><td style="width: 217px"></td><td><h4>Medical Test : Private Part of Body</h4></td></tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Gender Testing:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="gtPass" Text="  Pass" runat="server" GroupName="genderTesting" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="gtFail" Text="  Fail" runat="server" GroupName="genderTesting" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Anal Testing:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="atPass" Text="  Pass" runat="server" GroupName="analTesting" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="atFail" Text="  Fail" runat="server" GroupName="analTesting" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Testical Growth:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="tgPass" Text="  Pass" runat="server" GroupName="testicalGrowth" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="tgFail" Text="  Fail" runat="server" GroupName="testicalGrowth" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Hydrocele:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="hPass" Text="  Pass" runat="server" GroupName="hydrocele" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="hFail" Text="  Fail" runat="server" GroupName="hydrocele" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Swollen Veins:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="svPass" Text="  Pass" runat="server" GroupName="swollenVeins" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="svFail" Text="  Fail" runat="server" GroupName="swollenVeins" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Penis/vagina Testing:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="ptPass" Text="  Pass" runat="server" GroupName="penisTesting" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="ptFail" Text="  Fail" runat="server" GroupName="penisTesting" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>AIDS:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="aidsPass" Text="  Pass" runat="server" GroupName="aids" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="aidsFail" Text="  Fail" runat="server" GroupName="aids" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>Piles:</h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 118px; height: 30px;">
                                                    <h5><asp:RadioButton ID="pilesPass" Text="  Pass" runat="server" GroupName="piles" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:RadioButton ID="pilesFail" Text="  Fail" runat="server" GroupName="piles" Checked="True" AutoPostBack="True" OnCheckedChanged="pilesPass_CheckedChanged"/></h5>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px">&nbsp;</td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"><h4>
                                        <asp:Label ID="Label2" runat="server" Text="Comment :"></asp:Label>
                                        </h4></td>
                                    <td style="height: 30px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 231px; height: 33px">
                                                    <asp:TextBox CssClass="form-control" ID="txtxomm" runat="server" Height="79px" TextMode="MultiLine" Width="222px"></asp:TextBox>
                                                </td>
                                                <td style="height: 33px">
                                                    <asp:RequiredFieldValidator ID="rqcm" runat="server" ControlToValidate="txtxomm" ErrorMessage="Comment Box cannot be blank" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;"></td>
                                    <td style="height: 30px">
                                        <asp:Label ID="lblres" runat="server"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 30px;">&nbsp;</td>
                                    <td style="height: 30px">
                                        <h4>
                                            <asp:Label ID="lblr1" runat="server"></asp:Label>
                                        </h4>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px; height: 41px;"></td>
                                    <td style="height: 41px">
                                        <table class="w-100">
                                            <tr>
                                                <td style="width: 138px">
                                                    <asp:Button ID="btnsub" runat="server" CssClass="btn btn-primary" OnClick="btnsub_Click" Text="Submit" ValidationGroup="1" />
                                                </td>
                                                <td>
                                                    <asp:Button CssClass="btn btn-danger" ID="btnabs" runat="server" Text="Absent" OnClick="btnabs_Click" ValidationGroup="1" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 217px">&nbsp;</td>
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
        function chk_w() {
            var w = document.getElementById('<%= txtweight.ClientID %>').value;
            var g = document.getElementById('<%= lblg.ClientID %>').textContent;
            var height = document.getElementById('<%= lblheight.ClientID %>').textContent;
            var age = document.getElementById('<%= txtage.ClientID %>').value;

            if (g == "M") {
                if (age >= 18 && age <= 22) {
                    if (height >= 165 && height <= 166) {
                        if (w >= 49.5 && w <= 60.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                            
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 167 && height <= 168) {
                        if (w >= 51 && w <= 62) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 169 && height <= 170) {
                        if (w >= 52 && w <= 64) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 171 && height <= 172) {
                        if (w >= 54 && w <= 66) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 173 && height <= 174) {
                        if (w >= 55 && w <= 67) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 175 && height <= 176) {
                        if (w >= 56.5 && w <= 69) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 177 && height <= 178) {
                        if (w >= 57.5 && w <= 70.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 179 && height <= 180) {
                        if (w >= 59 && w <= 72) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                            
                        }
                        else {
                           document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 181 && height <= 182) {
                        if (w >= 61 && w <= 74.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 183 && height <= 184) {
                        if (w >= 63 && w <= 77) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 185 && height <= 186) {
                        if (w >= 63.5 && w <= 77.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                           document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 187 && height <= 188) {
                        if (w >= 65 && w <= 79) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 189 && height <= 190) {
                        if (w >= 66 && w <= 81) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                }

                if (age >= 23 && age <= 27) {
                    if (height >= 165 && height <= 166) {
                        if (w >= 51.5 && w <= 62.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 167 && height <= 168) {
                        if (w >= 52.5 && w <= 64.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 169 && height <= 170) {
                        if (w >= 54 && w <= 66) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 171 && height <= 172) {
                        if (w >= 55.5 && w <= 67.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 173 && height <= 174) {
                        if (w >= 57 && w <= 70) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 175 && height <= 176) {
                        if (w >= 58.5 && w <= 71.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 177 && height <= 178) {
                        if (w >= 60 && w <= 73) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 179 && height <= 180) {
                        if (w >= 61 && w <= 75) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 181 && height <= 182) {
                        if (w >= 62.5 && w <= 76.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 183 && height <= 184) {
                        if (w >= 64.5 && w <= 78.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 185 && height <= 186) {
                        if (w >= 65.5 && w <= 80.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 187 && height <= 188) {
                        if (w >= 67.5 && w <= 82.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                           document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 189 && height <= 190) {
                        if (w >= 68.5 && w <= 83.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                }

                if (age >= 28 && age <= 32) {
                    if (height >= 165 && height <= 166) {
                        if (w >= 53 && w <= 65) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 167 && height <= 168) {
                        if (w >= 54.5 && w <= 66.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 169 && height <= 170) {
                        if (w >= 56 && w <= 68) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 171 && height <= 172) {
                        if (w >= 57 && w <= 70) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 173 && height <= 174) {
                        if (w >= 59 && w <= 72) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 175 && height <= 176) {
                        if (w >= 60.5 && w <= 73.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 177 && height <= 178) {
                        if (w >= 61.5 && w <= 75.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 179 && height <= 180) {
                        if (w >= 63.5 && w <= 77.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 181 && height <= 182) {
                        if (w >= 65 && w <= 79) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 183 && height <= 184) {
                        if (w >= 66.5 && w <= 81.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 185 && height <= 186) {
                        if (w >= 68 && w <= 83) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 187 && height <= 188) {
                        if (w >= 70 && w <= 85.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 189 && height <= 190) {
                        if (w >= 70.5 && w <= 86.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                }

                if (age >= 33 && age <= 37) {
                    if (height >= 165 && height <= 166) {
                        if (w >= 54.5 && w <= 66.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height <= 167 && height >= 168) {
                        if (w >= 56 && w <= 68) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 169 && height <= 170) {
                        if (w >= 57.5 && w <= 70.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 171 && height <= 172) {
                        if (w >= 59 && w <= 72) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 173 && height <= 174) {
                        if (w >= 61 && w <= 74.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 175 && height <= 176) {
                        if (w >= 62 && w <= 76) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 177 && height <= 178) {
                        if (w >= 63.5 && w <= 77.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 179 && height <= 180) {
                        if (w >= 65.5 && w <= 80) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 181 && height <= 182) {
                        if (w >= 66.5 && w <= 81.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 183 && height <= 184) {
                        if (w >= 68.5 && w <= 83.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                           document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 185 && height <= 186) {
                        if (w >= 70 && w <= 86) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 187 && height <= 188) {
                        if (w >= 71.5 && w <= 87.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 189 && height <= 190) {
                        if (w >= 72.5 && w <= 88.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                }
            }

            if (g == "F") {
                if (age >= 18 && age <= 22) {
                    if (height >= 155 && height <= 157) {
                        if (w >= 38.5 && w <= 47.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 158 && height == 159) {
                        if (w >= 40.5 && w <= 49.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 160 && height <= 162) {
                        if (w >= 41.5 && w <= 50.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 163 && height == 164) {
                        if (w >= 43 && w <= 52.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 165 && height <= 167) {
                        if (w >= 44 && w <= 54) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 168) {
                        if (w >= 46 && w <= 57) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    
                }

                if (age >= 23 && age <= 27) {
                    if (height >= 155 && height <= 157) {
                        if (w >= 40 && w <= 49) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 158 && height == 159) {
                        if (w >= 42 && w <= 51) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 160 && height <= 162) {
                        if (w >= 43 && w <= 52.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 163 && height == 164) {
                        if (w >= 44 && w <= 54) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 165 && height <= 167) {
                        if (w >= 45.5 && w <= 55.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 168) {
                        if (w >= 47 && w <= 62) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                           document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    
                }

                if (age >= 28 && age <= 32) {
                    if (height >= 155 && height <= 157) {
                        if (w >= 41.5 && w <= 50.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 158 && height == 159) {
                        if (w >= 43 && w <= 53) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 160 && height <= 162) {
                        if (w >= 44 && w <= 54) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 163 && height == 164) {
                        if (w >= 46 && w <= 56) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 165 && height <= 167) {
                        if (w >= 47 && w <= 58) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 168) {
                        if (w >= 48 && w <= 64) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    
                }

                if (age >= 33 && age <= 37) {
                   if (height >= 155 && height <= 157) {
                        if (w >= 43 && w <= 52.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 158 && height == 159) {
                        if (w >= 44.5 && w <= 53.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 160 && height <= 162) {
                        if (w >= 45.5 && w <= 54.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height == 163 && height == 164) {
                        if (w >= 47 && w <= 57.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 165 && height <= 167) {
                        if (w >= 48.5 && w <= 59.5) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    }
                    if (height >= 168) {
                        if (w >= 49.5 && w <= 66) {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Pass";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Pass";
                        }
                        else {
                            document.getElementById('<%= lblhr.ClientID %>').textContent = "Fail";
                            document.getElementById('<%= hfweight.ClientID %>').value = "Fail";
                        }
                    } 
                    
                }
                
            }
        }
        
    </script>
</asp:Content>
