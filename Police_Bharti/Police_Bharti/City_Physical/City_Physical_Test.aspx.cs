using MySql.Data.MySqlClient;
using System;
using System.Configuration;
using System.Data;
using System.Drawing;

namespace Police_Bharti.City_Physical
{
    public partial class City_Physical_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                get_date();
                get_cand();
                fill_data();
            }
        }

        protected void get_date()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                string s2 = "SELECT distinct(physical_date) FROM pb_city_data";
                MySqlConnection conn = new MySqlConnection(s1);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds = new DataSet();
                da1.Fill(ds, "a");
                DropDownList1.DataSource = ds.Tables["a"].DefaultView;
                DropDownList1.DataTextField = "physical_date";
                DropDownList1.DataValueField = "physical_date";
                DropDownList1.DataBind();
                ViewState["vsFoodCategory"] = ds;
                conn.Close();
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void get_cand()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                string s2 = "SELECT application_Id,physical_date FROM pb_city_data where physical_date='"+DropDownList1.Text+"'";
                MySqlConnection conn = new MySqlConnection(s1);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds = new DataSet();
                da1.Fill(ds, "a");
                DropDownList2.DataSource = ds.Tables["a"].DefaultView;
                DropDownList2.DataTextField = "application_Id";
                DropDownList2.DataValueField = "application_Id";
                DropDownList2.DataBind();
                ViewState["vsFoodCategory"] = ds;
                conn.Close();
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void fill_data()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                MySqlConnection con = new MySqlConnection(s1);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM  pb_city_data", con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "t1");
                foreach (DataRow r1 in ds1.Tables["t1"].Rows)
                {
                    if ((r1["application_Id"].ToString() == DropDownList2.Text))
                    {
                        lblname.Text = r1["full_name"].ToString();
                        lbldob.Text = r1["date_of_birth"].ToString();
                        lblg.Text = r1["gender"].ToString();
                        lblcast.Text = r1["cast"].ToString();
                        lblcategory.Text = r1["category"].ToString();
                        //Image1.ImageUrl = r1["Image1"].ToString();
                        //Image2.ImageUrl = r1["Image2"].ToString();
                        //txtwas.Text = r1["Was_Price"].ToString();
                        //txtnow.Text = r1["Now_price"].ToString();
                    }
                }
                con.Close();

                if (lblg.Text == "M")
                {
                    if ((txtheight.Text != "") && (txtchest.Text != "") && (txtweight.Text != ""))
                    {
                        btnsub.Enabled = false;
                    }
                }

                if (lblg.Text == "F")
                {
                    if ((txtheight.Text != "") && (txtweight.Text != ""))
                    {
                        btnsub.Enabled = false;
                    }
                }
            }
            catch(Exception e)
            {
                Response.Write(e);
            }
        }

        protected void c_hide()
        {
            if (lblg.Text == "F")
            {
                txtchest.Visible = false;
                Label1.Visible = false;
                RequiredFieldValidator1.Enabled = false;
            }
            else
            {
                txtchest.Visible = true;
                Label1.Visible = true;
                RequiredFieldValidator1.Enabled = true;
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            get_cand();
            fill_data();
            lblres.Text = "";
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            fill_data();
            c_hide();
            lblres.Text = "";
        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            string res = "0";
            if (lblg.Text == "M")
            {
                if ((lblhr.Text == "Pass") && (lblcr.Text == "Pass"))
                {
                    res = "1";
                }
                else
                {
                    res = "0";
                }
            }
            if(lblg.Text == "F")
            {
                if ((lblhr.Text == "Pass"))
                {
                    res = "1";
                }
                else
                {
                    res = "0";
                }
            }
            //lblres.Text = lblhr.Text;

            //string s2;
            //s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            //MySqlConnection conn = new MySqlConnection(s2);
            //conn.Open();
            //MySqlCommand cmd = new MySqlCommand("Update pb_city_data set height =@a, chest=@b, weight=@c where application_Id="+DropDownList2.Text, conn);
            //cmd.Parameters.AddWithValue("@a", txtheight.Text);
            //cmd.Parameters.AddWithValue("@b", txtchest.Text);
            //cmd.Parameters.AddWithValue("@c", txtweight.Text);
            //cmd.ExecuteNonQuery();



            txtheight.Text = "";
            txtchest.Text = "";
            txtweight.Text = "";
            lblres.Text = "Submitted Successfully";
            
        }
    }
}