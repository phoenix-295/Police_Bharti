﻿using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Police_Bharti.CityAdmin
{
    public partial class Invite_Candidates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                default1();
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
                    lblfrom.Text = r1["start_date"].ToString();                    
                    lblto.Text = r1["end_date"].ToString();
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
            int rowcount = 0;
            int invitecount = 0;
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
                rowcount++;
                if ((r1["id"].ToString() == x))
                {
                    lblfrom.Text = r1["start_date"].ToString();
                    lblto.Text = r1["end_date"].ToString();
                    if ((r1["c_invited"].ToString() == "1"))
                    {
                        btnupdate.Text = "Invited";
                        btnupdate.Enabled = false;
                    }
                    else
                    {
                        btnupdate.Text = "Invite";
                        btnupdate.Enabled = true;
                    }
                }

                
                 
            }
            Response.Write(invitecount);
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            string s1;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            string id = (DropDownList1.SelectedIndex + 1).ToString();
            MySqlConnection conn = new MySqlConnection(s1);
            conn.Open();

            MySqlCommand cmd = new MySqlCommand("Update pb_city_event_plan set c_invited=@a where id=" + id, conn);

            cmd.Parameters.AddWithValue("@a", "1");
            
            cmd.ExecuteNonQuery();
            conn.Close();
            Label1.Text = "Updated Successfully";
            Label1.ForeColor = Color.Green;
        }
    }
}