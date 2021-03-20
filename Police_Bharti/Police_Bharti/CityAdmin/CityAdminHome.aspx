<%@ Page Title="" Language="C#" MasterPageFile="~/CityAdmin/CityAdminMaster.Master" AutoEventWireup="true" CodeBehind="CityAdminHome.aspx.cs" Inherits="Police_Bharti.CityAdmin.CityAdminHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>
                <table class="w-100">
                    <tr>
                        <td style="width:260px">
                            <div class="row">
                                <div class="col-lg-3 col-6">
                                    <div class="small-box bg-info" style="width:250px">
                                        <div class="inner">
                                            <h3>
                                                <asp:Label ID="lbl1" runat="server" Text="Label"></asp:Label></h3>
                                            <p><em>Total Candidates</em></p>
                                        </div>
                                        <div class="icon">
                                            <i class="ion ion-person"></i>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </td>
                        <td style="width:260px">
                                    <div class="row">
                    <div class="col-lg-3 col-6">
                <div class="small-box bg-success" style="width:250px">
              <div class="inner">
                <h3>
                    <asp:Label ID="Label1" runat="server" Text="Physical"></asp:Label></h3>
                <p><em><asp:Label ID="pstart" runat="server" Text=""></asp:Label>  to</em> <em>  <asp:Label ID="pend" runat="server" Text=""></asp:Label></em></p>
              </div>
              <div class="icon">
                <i class="ion ion-calendar"></i>
              </div>
            </div>
                        </div>
                    </div>
                                </td>
                                <td style="width:260px">
                                    <div class="row">
                    <div class="col-lg-3 col-6">
                <div class="small-box bg-warning" style="width:250px">
              <div class="inner">
                <h3>
                    <asp:Label ID="Label2" runat="server" Text="Written"></asp:Label></h3>
                <p><em><asp:Label ID="Label3" runat="server" Text=""></asp:Label>  to</em> <em>  <asp:Label ID="Label4" runat="server" Text=""></asp:Label></em></p>
              </div>
              <div class="icon">
                <i class="ion ion-calendar"></i>
              </div>
            </div>
                        </div>
                    </div>
                                </td>
                                <td style="width:260px">
                                    <div class="row">
                    <div class="col-lg-3 col-6">
                <div class="small-box bg-danger" style="width:250px">
              <div class="inner">
                <h3>
                    <asp:Label ID="Label5" runat="server" Text="Medical"></asp:Label></h3>
                <p><em><asp:Label ID="Label6" runat="server" Text=""></asp:Label>  to</em> <em>  <asp:Label ID="Label7" runat="server" Text=""></asp:Label></em></p>
              </div>
              <div class="icon">
                <i class="ion ion-calendar"></i>
              </div>
            </div>
                        </div>
                    </div>

                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width:175px">&nbsp;</td>
            <td>

                <table class="w-100">
                    <tr>
                        <td style="width:100px">
                            <div class="info-box">
                              <span class="info-box-icon bg-blue"><i class="ion ion-male"></i></span>

                              <div class="info-box-content">
                                <span class="info-box-text">Male</span>
                                <span class="info-box-number">
                                    <em>
                                    <asp:Label ID="lblmale" runat="server" Text=""></asp:Label>
                                  </em>
                                </span>
                              </div>
              <!-- /.info-box-content -->
                            </div>
                        </td>
                        <td style="width:20px">&nbsp;</td>
                        <td style="width:100px">
                            <div class="info-box">
                              <span class="info-box-icon bg-pink"><i class="ion ion-female"></i></span>

                              <div class="info-box-content">
                                <span class="info-box-text">Female</span>
                                <span class="info-box-number">
                                    <em>
                                    <asp:Label ID="lblfemale" runat="server" Text=""></asp:Label>
                                  </em>
                                </span>
                              </div>
              <!-- /.info-box-content -->
                            </div>
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>

            </td>
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
