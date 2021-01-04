using System;
using System.Data;
using System.Data.OleDb;
using System.IO;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Police_Bharti.Admin
{
    public partial class Add_Records : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btninsert.Visible = false;
            chkbx1.Visible = false;
        }

        protected void btnupload_Click(object sender, EventArgs e)
        {
            try
            {
                lblmsg.Text = "";
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
                string query = "SELECT * FROM [" + sheettxt.Text + "$]";
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
                chkbx1.Visible = true;
            }
            catch(Exception e1)
            {
                Response.Write("<script> alert('Error In Input'); </script>");
            }
            
        }

        protected void btninsert_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection con = new MySqlConnection(connStr);
            con.Open();
            MySqlCommand com;
            if (chkbx1.Checked)
            {
                com = new MySqlCommand("DELETE From pb_gramin_data", con);
                com.ExecuteNonQuery();
                com = new MySqlCommand("DELETE From pb_city_data", con);
                com.ExecuteNonQuery();
                foreach (GridViewRow g1 in gvExcelFile.Rows)
                {
                    if (((g1.Cells[9].Text) == ("city")) || ((g1.Cells[9].Text) == ("City")))
                    {
                        com = new MySqlCommand("Insert into pb_city_data(application_Id,full_name,date_of_birth,district,gender,cast,category,email,phonenumber,region) values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "',  '" + g1.Cells[4].Text + "',  '" + g1.Cells[5].Text + "',  '" + g1.Cells[6].Text + "',  '" + g1.Cells[7].Text + "',  '" + g1.Cells[8].Text + "',  '" + g1.Cells[9].Text + "')", con);
                        com.ExecuteNonQuery();
                    }
                    if (((g1.Cells[9].Text) == ("gramin")) || ((g1.Cells[9].Text) == ("Gramin")))
                    {
                        com = new MySqlCommand("Insert into pb_gramin_data(application_Id,full_name,date_of_birth,district,gender,cast,category,email,phonenumber,region) values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "',  '" + g1.Cells[4].Text + "',  '" + g1.Cells[5].Text + "',  '" + g1.Cells[6].Text + "',  '" + g1.Cells[7].Text + "',  '" + g1.Cells[8].Text + "',  '" + g1.Cells[9].Text + "')", con);
                        com.ExecuteNonQuery();
                    }
                }
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "Records Overridden";
            }
            else
            {
                foreach (GridViewRow g1 in gvExcelFile.Rows)
                {
                    if (((g1.Cells[9].Text) == ("city")) || ((g1.Cells[9].Text) == ("City")))
                    {
                        com = new MySqlCommand("Insert into pb_city_data(application_Id,full_name,date_of_birth,district,gender,cast,category,email,phonenumber,region) values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "',  '" + g1.Cells[4].Text + "',  '" + g1.Cells[5].Text + "',  '" + g1.Cells[6].Text + "',  '" + g1.Cells[7].Text + "',  '" + g1.Cells[8].Text + "',  '" + g1.Cells[9].Text + "')", con);
                        com.ExecuteNonQuery();
                    }
                    if (((g1.Cells[8].Text) == ("district")) || ((g1.Cells[8].Text) == ("District")))
                    {
                        com = new MySqlCommand("Insert into pb_gramin_data(application_Id,full_name,date_of_birth,district,gender,cast,category,email,phonenumber,region) values ('" + g1.Cells[0].Text + "','" + g1.Cells[1].Text + "','" + g1.Cells[2].Text + "','" + g1.Cells[3].Text + "',  '" + g1.Cells[4].Text + "',  '" + g1.Cells[5].Text + "',  '" + g1.Cells[6].Text + "',  '" + g1.Cells[7].Text + "',  '" + g1.Cells[8].Text + "',  '" + g1.Cells[9].Text + "')", con);
                        com.ExecuteNonQuery();
                    }
                }
                lblmsg.ForeColor = Color.Green;
                lblmsg.Text = "Successfully Added";
            }
            con.Close();
        }

    }
}