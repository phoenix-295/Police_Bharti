<%@ Page Title="" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="City_Physical_Test.aspx.cs" Inherits="Police_Bharti.City_Physical.City_Physical_Test" %>
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
                <table class="w-100">
                    <tr>
                        <td style="width: 115px"><h4>Date: </h4></td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" Width="290px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
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
                        <td style="width: 115px"><h4>Candidate: </h4></td>
                        <td>
                            <asp:DropDownList ID="DropDownList2" runat="server" Width="290px" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            </asp:DropDownList>
                        </td>
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
                            <h6><asp:Label ID="lblname" runat="server"></asp:Label></h6>
                        </td>
                        <td style="width: 155px"><h4>Date Of Birth: </h4></td>
                        <td style="width: 168px">
                            <h6><asp:Label ID="lbldob" runat="server"></asp:Label></h6>
                        </td>
                        <td style="width: 94px"><h4>Gender: </h4></td>
                        <td>
                            <h6><asp:Label ID="lblg" runat="server"></asp:Label></h6>
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
                                <asp:Label ID="lblcategory" runat="server"></asp:Label>
                            </h6>
                        </td>
                        <td style="width: 155px"><h4>Cast: </h4></td>
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
                        <td style="width: 103px"><h4>Height:</h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 306px">
                            <asp:TextBox placeholder="Enter Height in cms" CssClass="form-control" Width="290px" ID="txtheight" runat="server" onchange="chk_h()" ValidationGroup="1"></asp:TextBox>
                                    </td>
                                    <td style="width: 108px">
                                        <asp:Label ID="lblhr" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqh" runat="server" ControlToValidate="txtheight" ErrorMessage="Height is required" style="color: #FF0000" Display="Dynamic" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtheight" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
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
                        <td style="width: 103px"><h4>
                            <asp:Label ID="Label1" runat="server" Text="Chest:"></asp:Label></h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 310px; height: 31px;">
                            <asp:TextBox placeholder="Enter chest in cms" CssClass="form-control" Width="290px" ID="txtchest" runat="server" onchange="chk_c()" ValidationGroup="1"></asp:TextBox>
                                    </td>
                                    <td style="width: 310px; height: 31px;">
                            <asp:TextBox placeholder="Enter chest in cms" CssClass="form-control" Width="290px" ID="txtmaxchest" runat="server" onchange="chk_c()" ValidationGroup="1"></asp:TextBox>
                                    </td>
                                    
                                    <td style="width: 105px; height: 31px;">
                                        <asp:Label ID="lblcr" runat="server" style="color: #008000"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="height: 31px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtchest" ErrorMessage="Chest is Required" style="color: #FF0000" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="rec" runat="server" ControlToValidate="txtchest" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
                                    </td>
                                    <td style="height: 31px">
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtmaxchest" ErrorMessage="Chest is Required" style="color: #FF0000" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtmaxchest" Display="Dynamic" ErrorMessage="Only 2-3 digit numbers Accepted" SetFocusOnError="True" ValidationExpression="^\d{2,3}$" ValidationGroup="1"></asp:RegularExpressionValidator>
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
                        <td style="width: 103px"><h4>Weight:</h4></td>
                        <td>
                            <table class="w-100">
                                <tr>
                                    <td style="width: 311px">
                            <asp:TextBox placeholder="Enter weight in kg" CssClass="form-control" Width="290px" ID="txtweight" runat="server" ValidationGroup="1" CausesValidation="True"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="rqw" runat="server" ControlToValidate="txtweight" ErrorMessage="Weight is Required" style="color: #FF0000" SetFocusOnError="True" ValidationGroup="1">*</asp:RequiredFieldValidator>
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
                            <h4><asp:Label ID="lblr1" runat="server"></asp:Label></h4>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 103px; height: 41px;"></td>
                        <td style="height: 41px">
                            <asp:Button ID="btnsub" runat="server" OnClick="btnsub_Click" Text="Submit" ValidationGroup="1" />
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 103px">&nbsp;</td>
                        <td>
                           
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
