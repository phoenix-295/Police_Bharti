<%@ Page Title="Change-Password" Language="C#" MasterPageFile="~/CityMedical/CityMedicalMaster.Master" AutoEventWireup="true" CodeBehind="City_Medical_Change_Password.aspx.cs" Inherits="Police_Bharti.CityMedical.City_Medical_Change_Password" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td>
                            <asp:ChangePassword ID="ChangePassword1" runat="server">
                                <ChangePasswordTemplate>
                                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                                        <tr>
                                            <td>
                                                <table cellpadding="0">
                                                    <tr>
                                                        <td align="center" colspan="2"><h3>Change Your Password</h3></td>
                                                    </tr>
                                                    <tr>
                                                        <td class="text-left">
                                                            <asp:Label ID="CurrentPasswordLabel" runat="server" AssociatedControlID="CurrentPassword"><h5>Password:</h5> </asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="CurrentPassword" runat="server" CssClass="form-control" TextMode="Password" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="CurrentPasswordRequired" runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="NewPasswordLabel" runat="server" AssociatedControlID="NewPassword"><h5>New Password:</h5></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="NewPassword" runat="server" CssClass="form-control" TextMode="Password" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="NewPasswordRequired" runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ToolTip="New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <asp:Label ID="ConfirmNewPasswordLabel" runat="server" AssociatedControlID="ConfirmNewPassword"><h5>Confirm New Password:</h5></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="ConfirmNewPassword" runat="server" CssClass="form-control" TextMode="Password" Width="250px"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="ConfirmNewPasswordRequired" runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ToolTip="Confirm New Password is required." ValidationGroup="ChangePassword1">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2">
                                                            <asp:CompareValidator ID="NewPasswordCompare" runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" Display="Dynamic" ErrorMessage="The Confirm New Password must match the New Password entry." ValidationGroup="ChangePassword1"></asp:CompareValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="center" colspan="2" style="color:Red;">
                                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td align="left">
                                                            <asp:Button ID="ChangePasswordPushButton" runat="server" CommandName="ChangePassword" CssClass="form-control btn-success" Text="Change Password" ValidationGroup="ChangePassword1" Width="200px" />
                                                        </td>
                                                        <td>
                                                            <asp:Button ID="CancelPushButton" runat="server" CausesValidation="False" CommandName="Cancel" CssClass="form-control btn-danger" Text="Cancel" Width="200px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </ChangePasswordTemplate>
                            </asp:ChangePassword>
                        </td>
                    </tr>
                </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>&nbsp;<td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

