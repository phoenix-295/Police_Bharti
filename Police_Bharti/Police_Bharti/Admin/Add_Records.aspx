<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin_Master.Master" AutoEventWireup="true" CodeBehind="Add_Records.aspx.cs" Inherits="Police_Bharti.Admin.Add_Records" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    


     <script type = "text/javascript">

        function Filevalidation()
        {
             const fi = document.getElementById("<%=FileUpload1.ClientID%>"); 
        // Check if any file is selected. 
        if (fi.files.length > 0) { 
            for (const i = 0; i <= fi.files.length - 1; i++) { 
  
                const fsize = fi.files.item(i).size; 
                const file = Math.round((fsize / 1024)); 
                // The size of the file. 
                if (file >= 1096)
                { 
                    alert("File too Big, please select a file less than 1mb");
                    var x = null;
                    document.getElementById("<%=FileUpload1.ClientID%>").value = x;
                }
                else
                { 
                    document.getElementById('size').innerHTML = '<b>'
                        + file + '</b> KB';
                } 
            } 
        } 

        }


    </script>




    <table class="w-100">
    <tr>
        <td style="width: 191px"><h5>Import Excel File:</h5></td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" accept="application/vnd.ms-excel, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"/>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="File Required" style="color: #FF0000"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Excel File required" ValidationExpression="(.*?)\.(xls|xlsx|XLS|XLSX)$" style="color: #FF0000"></asp:RegularExpressionValidator>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 191px"><h5>Sheet Name:</h5></td>
        <td>
            <asp:TextBox ID="sheettxt" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="sheettxt" ErrorMessage="Sheet Name Required" style="color: #FF0000"></asp:RequiredFieldValidator>
            </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 191px">
            <asp:Button ID="btnupload" runat="server" Text="Upload" OnClick="btnupload_Click" />
        </td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 191px">&nbsp;</td>
        <td class="text-center">
            <asp:GridView ID="gvExcelFile" runat="server" style="color: #000000; font-size: large;" ForeColor="Black" AllowPaging="True" BackColor="White" CellPadding="10" BorderColor="#CCCCCC" BorderWidth="1px" CellSpacing="2" GridLines="Horizontal">
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 191px; height: 80px;"></td>
        <td style="text-align:right; height: 80px;">
            <h6><asp:CheckBox ID="chkbx1" runat="server" Text="Delete previous data" /></h6>
            <asp:Button ID="btninsert" runat="server" Text="Insert Records" OnClick="btninsert_Click" CausesValidation="False" />
        </td>
        <td style="height: 80px"></td>
    </tr>
    <tr>
        <td style="width: 191px">&nbsp;</td>
        <td>
            <asp:Label ID="lblmsg" runat="server"></asp:Label>
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="width: 191px">&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
        
</asp:Content>
