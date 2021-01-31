<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Police_Bharti.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/bootstrap-grid.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 514px;
        }
        .auto-style3 {
            width: 468px;
        }
        .center {
  margin: auto;
  width: 50%;
  padding: 10px;
}
        .auto-style4 {
            margin: auto;
            width: 30%;
            padding: 10px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <asp:Login ID="Login1" runat="server" Width="1591px" Height="592px">
                <LayoutTemplate>
                    <div class="auto-style4">
                    <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                        <tr>
                            <td class="auto-style1">
                                <table cellpadding="0">
                                    <tr>
                                        <td align="center" class="auto-style3"><h3>Log In</h3></td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <h5>
                                            <span>
                                            <table class="w-100">
                                                <tr>
                                                    <td><span>Username: </span></td>
                                                    <td><span>
                                                        <asp:TextBox ID="UserName" runat="server" CssClass="form-control" Width="291px" placeholder="Enter your Username"></asp:TextBox>
                                                        </span></td>
                                                    <td><span>
                                                        <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                        </span></td>
                                                </tr>
                                            </table>
                                            </span>
                                                </h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <h5>
                                                <table class="w-100">
                                                    <tr>
                                                        <td><span>Password: </span></td>
                                                        <td><span>
                                                            &nbsp;&nbsp;
                                                            <asp:TextBox ID="Password" runat="server" CssClass="form-control" TextMode="Password" Width="291px" placeholder="Enter your password"></asp:TextBox>
                                                            </span></td>
                                                        <td><span>
                                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                                            </span></td>
                                                    </tr>
                                                </table>
                                                <span>&nbsp;</span></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style3">
                                            <h5><asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." /></h5>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" style="color:Red;" class="auto-style3">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="auto-style3">
                                            
                                            <asp:Button CssClass="btn btn-success btn-sm" ID="LoginButton" runat="server" CommandName="Login" Text="Log In" ValidationGroup="Login1" />
                                                
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                        </div>
                </LayoutTemplate>
            </asp:Login>
            <br />
        </div>
    </form>
    </body>
</html>
