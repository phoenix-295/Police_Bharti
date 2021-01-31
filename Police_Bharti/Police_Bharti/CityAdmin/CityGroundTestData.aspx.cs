using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Police_Bharti.CityAdmin
{
    public partial class CityGroundTestData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                fillgvm();
                fillgvf();
                MultiView1.ActiveViewIndex = 0;
            }
        }


        protected void fillgvm()
        {
            string g = "M";
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where gender='" + g + "' and cpg_submit = 1";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_datam");
            gvcity.DataSource = ds.Tables["pb_datam"].DefaultView;
            gvcity.DataBind();
            ViewState["vsPBm"] = ds;
            conn.Close();
        }

        protected void fillgvf()
        {
            string g = "F";
            string connStr = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string s2 = "SELECT * FROM pb_city_data where gender='" + g + "' and cpg_submit = 1";
            MySqlConnection conn = new MySqlConnection(connStr);
            conn.Open();
            MySqlDataAdapter da1 = new MySqlDataAdapter(s2, connStr);
            DataSet ds = new DataSet();
            da1.Fill(ds, "pb_dataf");
            gvcity0.DataSource = ds.Tables["pb_dataf"].DefaultView;
            gvcity0.DataBind();
            ViewState["vsPBf"] = ds;
            conn.Close();
        }

        protected void btnmale_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        protected void btnf_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1;
        }
    }
}