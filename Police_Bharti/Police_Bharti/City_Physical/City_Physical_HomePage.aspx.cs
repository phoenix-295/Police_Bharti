﻿using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            findr();
            default1();
        }

        protected void findr()
        {
            int m = 0, f = 0;
            int c = 0;
            string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  pb_city_data", con);
            DataSet ds1 = new DataSet();
            da.Fill(ds1, "t1");
            foreach (DataRow r1 in ds1.Tables["t1"].Rows)
            {
                c++;
                if ((r1["gender"].ToString() == "M"))
                {
                    m++;
                }
                if ((r1["gender"].ToString() == "F"))
                {
                    f++;
                }
                lblmale.Text = m.ToString();
                lblfemale.Text = f.ToString();
            }
            lbl1.Text = c.ToString();
            con.Close();
        }

        protected void default1()
        {
            string x = "1";
            string s1, s2;
            s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            s2 = "Select * from pb_city_event_plan where id=" + 1;
            MySqlConnection con = new MySqlConnection(s1);
            con.Open();
            MySqlDataAdapter da = new MySqlDataAdapter(s2, s1);
            DataSet ds = new DataSet();
            da.Fill(ds, "a");
            foreach (DataRow r1 in ds.Tables["a"].Rows)
            {
                if ((r1["id"].ToString() == x))
                {
                    pstart.Text = r1["start_date"].ToString();
                    pend.Text = r1["end_date"].ToString();

                }
            }
            con.Close();
        }
    }
}