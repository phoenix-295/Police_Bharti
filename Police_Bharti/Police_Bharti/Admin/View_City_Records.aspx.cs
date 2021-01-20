using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Web.UI.WebControls;

namespace Police_Bharti.Admin
{
    public partial class View_City_Records : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgv();
            }
            show_check();
            chnge();
        }

        protected void show_check()
        {
            string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data";
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            foreach (DataRow r1 in ds.Tables["a"].Rows)
            { 
                if (Convert.ToInt32(r1["show_data"]) == 1)
                {
                    btnsend.Enabled = false;
                    Label11.Text = "Data sent to City Admin";
                    Label11.ForeColor = Color.Green;
                }
            }
        }

        protected void fillgv()
        {
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_data");
            gvcity.DataSource = ds.Tables["pb_data"].DefaultView;
            gvcity.DataBind();
            ViewState["vsPB"] = ds;
            conn.Close();
        }

        protected void gvcity_PageIndexChanging(object sender, System.Web.UI.WebControls.GridViewPageEventArgs e)
        {
            DataSet mydataset = (DataSet)ViewState["vsPB"];
            DataTable myydatatable = mydataset.Tables["pb_data"];
            gvcity.DataSource = myydatatable;
            gvcity.PageIndex = e.NewPageIndex;
            gvcity.DataBind();
        }

        protected void btnsend_Click(object sender, EventArgs e)
        {
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("UPDATE pb_city_data SET show_data=1", conn);
            cmd.ExecuteNonQuery();
            conn.Close();
            btnsend.Visible = false;
            Label11.Text = "Data sent to City Admin";
            btnplan.Visible = true;
            Label11.ForeColor = Color.Green;
        }

        protected void chnge()
        {
            if (Label11.Text == "Data sent to City Admin")
            {
                btnplan.Visible = true;
            }
        }

        protected void btnplan_Click(object sender, EventArgs e)
        {
            Response.Redirect("Plan_City_Event.aspx");
        }
    }
}