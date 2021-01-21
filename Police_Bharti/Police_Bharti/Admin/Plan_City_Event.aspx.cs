using System;
using System.Configuration;
using System.Data;
using MySql.Data.MySqlClient;
using System.Drawing;

namespace Police_Bharti.Admin
{
    public partial class Plan_City_Event : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                default1();
                Label2.Text = txtto.Text;
            }
        }

        protected void default1()
        {
            string x = (DropDownList1.SelectedIndex + 1).ToString();
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            s2 = "Select * from pb_city_event_plan where id=" + x;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            foreach (DataRow r1 in ds.Tables["a"].Rows)
            {
                if ((r1["id"].ToString() == x))
                {
                    txtform.Text = r1["start_date"].ToString();
                    txtto.Text = r1["end_date"].ToString();
                    if ((r1["c_invited"].ToString() == "1"))
                    {
                        btnupdate.Enabled = false;
                    }
                    else
                    {
                        btnupdate.Enabled = true;
                    }
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string x = (DropDownList1.SelectedIndex + 1).ToString();
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            s2 = "Select * from pb_city_event_plan where id="+x;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            foreach (DataRow r1 in ds.Tables["a"].Rows)
            {
                if ((r1["id"].ToString() == x))
                {
                    txtform.Text = r1["start_date"].ToString();
                    txtto.Text = r1["end_date"].ToString();
                }
            }
            con.Close();
            Label1.Text = "";
            default1();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            
      
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string id = (DropDownList1.SelectedIndex + 1).ToString();
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();
            
            MySqlCommand cmd = new MySqlCommand("Update pb_city_event_plan set start_date=@a, end_date=@b where id=" + id, conn);
            
            cmd.Parameters.AddWithValue("@a", txtform.Text);
            cmd.Parameters.AddWithValue("@b", txtto.Text);
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Updated Successfully";
            Label1.ForeColor = Color.Green;
        }
    }
}