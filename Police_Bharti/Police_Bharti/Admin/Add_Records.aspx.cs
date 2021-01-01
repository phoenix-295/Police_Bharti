using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;

namespace Police_Bharti.Admin
{
    public partial class Add_Records : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btninsert.Visible = false;
           
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            string ConStr = "";
            string ext = Path.GetExtension(FileUpload1.FileName).ToLower();
            string path = Server.MapPath("~/Admin/Excel_Input/" + FileUpload1.FileName);
            FileUpload1.SaveAs(path);
            if (ext.Trim() == ".xls")
            {
                ConStr = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
            }
            else if (ext.Trim() == ".xlsx")
            {
                ConStr = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
            }
            string query = "SELECT * FROM [Sheet2$]";
            OleDbConnection conn = new OleDbConnection(ConStr);
            if (conn.State == ConnectionState.Closed)
            {
                conn.Open();
            }
            OleDbCommand cmd = new OleDbCommand(query, conn);
            OleDbDataAdapter da = new OleDbDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvExcelFile.DataSource = ds.Tables[0];
            gvExcelFile.DataBind();
            conn.Close();
            btninsert.Visible = true;
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            lblmsg.ForeColor = Color.Green;
            lblmsg.Text = "Successfully Added";
        }

        protected void check1(object sender, EventArgs e)
        {
            btnupload.Visible = true;
        }
    }
}