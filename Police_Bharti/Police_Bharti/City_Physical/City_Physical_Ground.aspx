<%@ Page Title="" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="City_Physical_Ground.aspx.cs" Inherits="Police_Bharti.City_Physical.City_Physical_Ground" %>
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
                                                    <asp:RangeValidator ID="rn16" runat="server" ControlToValidate="txt1600m" Display="Dynamic" ErrorMessage="1600m result must be in proper format mm.ss" MaximumValue="12.00" MinimumValue="2.00" SetFocusOnError="True" Type="Double" ValidationGroup="1" Enabled="False">*</asp:RangeValidator>
                                                    <asp:RegularExpressionValidator ID="re16" runat="server" ControlToValidate="txt1600m" Display="Dynamic" ErrorMessage="Proper Format." SetFocusOnError="True" ValidationExpression="^(1[0-2]|0?[1-9]).([0-5][0-9]?)" ValidationGroup="1">*</asp:RegularExpressionValidator>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>
                                        <table class="w-100">
                                            <tr>
                                                <td style="width:150px">
                                                    <h4>100 Meters:</h4>
                                                </td>
                                                <td style="width:108px">
                                                    <asp:TextBox placeholder="ss.msms" ID="txt100m" runat="server" Width="100px" onchange="chk_1()" CssClass="form-control" ToolTip="Enter time in ss.msms" TabIndex="2"></asp:TextBox>
                                                </td>
                                                <td>
                                                    <table class="w-100">
                                                        <tr>
                                                            <td style="width: 74px">
                                                                <asp:Label ID="lbl10" runat="server" style="color: #008000"></asp:Label>
                                                            </td>
                                                            <td style="width: 16px">
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
                            <asp:TextBox placeholder="mm.ss" CssClass="form-control" onchange="chk_8()" Width="100px" ID="txt800m" runat="server" ValidationGroup="1" TabIndex="3"></asp:TextBox>
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
                        <td style="width: 150px; height: 41px;">&nbsp;</td>
                        <td style="height: 41px">
                            <asp:Button ID="btnsub" runat="server" TabIndex="6" Text="Submit" ValidationGroup="1" />
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
     <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

    <script>
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
