<%@ Page Title="" Language="C#" MasterPageFile="~/City_Physical/City_Physical.Master" AutoEventWireup="true" CodeBehind="Report_by_id.aspx.cs" Inherits="Police_Bharti.City_Physical.Report_by_id" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <CR:CrystalReportSource ID="CrystalReportSource1" runat="server">
        <Report FileName="~\City_Physical\Report_by_id.rpt">

        </Report>
    </CR:CrystalReportSource>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" ReportSourceID="CrystalReportSource1" />
</asp:Content>
