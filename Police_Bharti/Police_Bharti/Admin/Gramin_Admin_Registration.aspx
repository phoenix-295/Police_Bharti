<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Gramin_Admin_Registration.aspx.cs" Inherits="Police_Bharti.Admin.Gramin_Admin_Registration" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="469px" OnCreatedUser="CreateUserWizard1_CreatedUser">
                    <WizardSteps>
                        <asp:WizardStep runat="server" Title="Registration">
                            <table style="font-size:100%;width:502px;">
                                    <tr>
                                        <td align="center" colspan="2"><h4>Gramin Admin Registration</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            
                                                <asp:Label ID="Label1" runat="server" Text="Label"><h5>ID No:</h5></asp:Label>
                                        </td>
                                        <td style="height: 60px">
                                            <h5><asp:TextBox CssClass="form-control" Width="291px" ID="txtid" runat="server"></asp:TextBox></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="Label2" runat="server" Text="Label"><h5>Buckle No:</h5></asp:Label>
                                        </td>
                                        <td style="height: 60px">
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="txtbklno" runat="server"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <h5>Name :</h5>
                                        </td>
                                        <td style="height: 60px">
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="txtname" runat="server"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px; height:60px">
                                            <h5>Birth date:</h5>
                                        </td>
                                        <td style="height:60px">
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="txtbdate" runat="server" ToolTip="Birth Date dd/mm/yyyy"></asp:TextBox>
                                            <cc1:ToolkitScriptManager ID="toolScriptManageer1" runat="server"></cc1:ToolkitScriptManager> 
                                                    <cc1:CalendarExtender ID="cal1" PopupButtonID="TextBox1" runat="server" TargetControlID="txtbdate"  
                        Format="dd/MM/yyyy"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px; height: 60px;">
                                            <h5>Joning date:</h5>
                                        </td>
                                        <td  style="height:60px">
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="txtjdate" runat="server" ToolTip="Joning Date dd/mm/yyyy"></asp:TextBox>
                                            <cc1:CalendarExtender ID="CalendarExtender1" PopupButtonID="TextBox1" runat="server" TargetControlID="txtjdate"  
                        Format="dd/MM/yyyy"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <h5>Address:</h5>
                                        </td>
                                        <td  style="height:60px">
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="txtadd" runat="server"></asp:TextBox>
                                            
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                        </asp:WizardStep>
                        <asp:CreateUserWizardStep runat="server" >
                            <ContentTemplate>
                                <table style="font-size:100%;width:515px;">
                                    <tr>
                                        <td align="center" colspan="2" style="height: 24px"><h4>Gramin Admin Registration</h4></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName"><h5>User Name:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <h5><asp:TextBox CssClass="form-control" Width="291px" ID="UserName" runat="server"></asp:TextBox></h5>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"><h5>Password:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword"><h5>Confirm Password:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email"><h5>E-mail:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="Email" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question"><h5>Security Question:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="Question" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 183px">
                                            <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer"><h5>Security Answer:</h5></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox CssClass="form-control" Width="291px" ID="Answer" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>
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
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 175px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
