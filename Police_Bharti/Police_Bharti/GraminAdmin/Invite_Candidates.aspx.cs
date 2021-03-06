﻿using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Police_Bharti.GraminAdmin
{
    public partial class Invite_Candidates : System.Web.UI.Page
    {
        int rc, d1, d2, d3;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                count_city_rows();
                lbltotal.Text = rc.ToString();
                lblremaning.Text = d1.ToString();
                lblinvited.Text = (rc - d1).ToString();
                default1();
                calc_diff();
            }
        }

        protected void default1()
        {
            string x = (DropDownList1.SelectedIndex + 1).ToString();
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            s2 = "Select * from pb_gramin_event_plan where id=" + x;
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
                        btnupdate.Text = "Invited";
                    }
                    else
                    {
                        btnupdate.Enabled = true;
                        btnupdate.Text = "Invite";
                    }
                }
            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            count_city_rows();
            default1();
            calc_diff();
            Label1.Text = "";
            if (DropDownList1.SelectedIndex == 0)
            {
                lblremaning.Text = d1.ToString();
                lblinvited.Text = (rc - d1).ToString();
            }
            else if (DropDownList1.SelectedIndex == 1)
            {
                lblremaning.Text = d2.ToString();
                lblinvited.Text = (rc - d2).ToString();
            }
            else if (DropDownList1.SelectedIndex == 2)
            {
                lblremaning.Text = d3.ToString();
                lblinvited.Text = (rc - d3).ToString();
            }
        }

        protected void calc_diff()
        {
            if (DropDownList1.SelectedIndex == 0)
            {

                lblremaning.Text = d1.ToString();
                lblinvited.Text = (rc - d1).ToString();
            }
            if (DropDownList1.SelectedIndex == 1)
            {

                lblremaning.Text = d2.ToString();
                lblinvited.Text = (rc - d2).ToString();
            }
            if (DropDownList1.SelectedIndex == 2)
            {

                lblremaning.Text = d3.ToString();
                lblinvited.Text = (rc - d3).ToString();
            }
        }

        protected void count_city_rows()
        {
            rc = 0;
            int wf = 0, pf = 0, mf = 0;
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            s2 = "Select * from pb_gramin_data";
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            foreach (DataRow r1 in ds.Tables["a"].Rows)
            {
                rc++;
                if ((r1["written_flag"].ToString() == "1"))
                {
                    wf++;
                }
                if ((r1["physical_flag"].ToString() == "1"))
                {
                    pf++;
                }
                if ((r1["medical_flag"].ToString() == "1"))
                {
                    mf++;
                }
            }

            d1 = rc - pf;
            d2 = rc - wf;
            d3 = rc - mf;



            if (rc == pf)
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 1 where id=1", con);
                cmd1.ExecuteNonQuery();
            }
            else
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 0 where id=1", con);
                cmd1.ExecuteNonQuery();
            }

            if (rc == wf)
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 1 where id=2", con);
                cmd1.ExecuteNonQuery();
            }
            else
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 0 where id=2", con);
                cmd1.ExecuteNonQuery();
            }

            if (rc == mf)
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 1 where id=3", con);
                cmd1.ExecuteNonQuery();
            }
            else
            {
                MySqlCommand cmd1 = new MySqlCommand("Update pb_city_event_plan set c_invited= 0 where id=3", con);
                cmd1.ExecuteNonQuery();
            }
            con.Close();
        }

        protected void btnupdate_Click(object sender, EventArgs e)
        {
            count_city_rows();
            default1();
            update_invitation_date_to_master_table();
            count_city_rows();
            default1();
            txtdate.Text = "";
            txtno.Text = "";
            calc_diff();
        }

        protected void update_invitation_date_to_master_table()
        {
            String test = (DropDownList1.SelectedIndex + 1).ToString();
            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            if (String.Equals(test, "1"))
            {
                MySqlCommand cmd = new MySqlCommand("Update pb_city_data set physical_date =@b, physical_flag=@a where physical_flag!=1 limit @c", conn);
                cmd.Parameters.AddWithValue("@b", txtdate.Text);
                cmd.Parameters.AddWithValue("@a", "1");
                cmd.Parameters.AddWithValue("@c", Convert.ToInt32(txtno.Text));
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Invitation sent successfully')</script>");
                Label1.Text = "Invitation sent Sucessfully";
                Label1.ForeColor = Color.Green;
            }
            else if (String.Equals(test, "2"))
            {
                MySqlCommand cmd = new MySqlCommand("Update pb_city_data set written_date=@b, written_flag=@a where written_flag!=1 limit @c", conn);
                cmd.Parameters.AddWithValue("@b", txtdate.Text);
                cmd.Parameters.AddWithValue("@a", "1");
                cmd.Parameters.AddWithValue("@c", Convert.ToInt32(txtno.Text));
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Invitation sent successfully')</script>");
                Label1.Text = "Invitation sent Sucessfully";
                Label1.ForeColor = Color.Green;

            }
            else if (String.Equals(test, "3"))
            {
                MySqlCommand cmd = new MySqlCommand("Update pb_city_data set medical_date =@b, medical_flag=@a where medical_flag!=1 limit @c", conn);
                cmd.Parameters.AddWithValue("@a", "1");
                cmd.Parameters.AddWithValue("@b", txtdate.Text);
                cmd.Parameters.AddWithValue("@c", Convert.ToInt32(txtno.Text));
                cmd.ExecuteNonQuery();
                //Response.Write("<script>alert('Invitation sent successfully')</script>");
                Label1.Text = "Invitation sent Sucessfully";
                Label1.ForeColor = Color.Green;
            }
            conn.Close();
        }
    }
}