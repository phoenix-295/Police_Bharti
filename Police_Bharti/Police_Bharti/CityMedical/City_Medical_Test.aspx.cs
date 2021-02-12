using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Police_Bharti.CityMedical
{
    public partial class City_Medical_Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                get_date();
                get_cand();
                fill_data();
                //findr();
            }
        }

        protected void get_date()
        {
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                string s2 = "SELECT distinct(medical_date) FROM pb_city_data";
                MySqlConnection conn = new MySqlConnection(s1);
                conn.Open();
                MySqlDataAdapter da1 = new MySqlDataAdapter(s2, s1);
                DataSet ds = new DataSet();
                da1.Fill(ds, "a");
                DropDownList1.DataSource = ds.Tables["a"].DefaultView;
                DropDownList1.DataTextField = "medical_date";
                DropDownList1.DataValueField = "medical_date";
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
                string s2 = "SELECT application_Id,medical_date FROM pb_city_data where medical_date='" + DropDownList1.Text + "'";
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
        /*
        protected void t1()
        {
            int remain = 0, tot = 0;
            int ab = 0, dc = 0;
            try
            {
                string s1 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
                MySqlConnection con = new MySqlConnection(s1);
                con.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM pb_city_data where physical_date='" + DropDownList1.Text + "' and p_flag = 1", con);
                DataSet ds1 = new DataSet();
                da.Fill(ds1, "t1");
                foreach (DataRow r1 in ds1.Tables["t1"].Rows)
                {
                    tot++;
                    if ((r1["g_flag"].ToString() != "1"))
                    {
                        remain++;
                    }
                    if ((r1["race1600"].ToString() == ""))
                    {
                        ab++;
                    }
                }
                dc = tot - remain;
                lbltotal.Text = tot.ToString();
               // lbldone.Text = dc.ToString();
                lblremaning.Text = remain.ToString();
               // lblabs.Text = ab.ToString();
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        */

        protected void fill_data()
        {

            string m_f = "";
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
                        lblheight.Text = r1["height"].ToString();
                        // remaining parameters should be here

                        // m_f = r1["m_flag"].ToString();
                         /*if ((r1["height"].ToString() == ""))
                         {
                             btnsub.Enabled = false;
                             btnabs.Enabled = false;
                         }
                         else
                         {
                             btnsub.Enabled = true;
                             btnabs.Enabled = true;
                         }
                         */
                    }
                }
                con.Close();
                /*
                if (m_f == "1")
                {
                    lblr1.ForeColor = Color.Green;
                    lblr1.Text = "Pass";
                    btnabs.Enabled = false;
                }
                else
                {
                    lblr1.ForeColor = Color.Red;
                    lblr1.Text = "Fail";
                    btnabs.Enabled = true;
                }
                */
            }
            catch (Exception e)
            {
                Response.Write(e);
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            get_cand();
            fill_data();
            lblres.Text = "";
            lblr1.Text = "";
            //findr();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            fill_data();
            //c_hide();
            lblres.Text = "";

        }

        protected void btnsub_Click(object sender, EventArgs e)
        {
            
            int wight=0, eyetest=0, eartest=0, ntest=0, ph=0, kk=0, pc=0, ff=0, vv=0, fl=0, dt=0, s=0,
                hr=0, sd=0, hb=0, fd=0, gt=0, at=0, tg=0, hydro=0, sv=0, pvt=0, aids=0, pls=0;

            if (hfweight.Value == "Pass")
            {
                wight = 1;
            }
            if (rbpass.Checked)
            {
                eyetest = 1;
            }
            if (earPass.Checked)
            {
                eartest = 1;
            }
            if (nosePass.Checked)
            {
                ntest = 1;
            }
            if (handiPass.Checked)
            {
                ph = 1;
            }
            if (kneePass.Checked)
            {
                kk = 1;
            }
            if (pChestPass.Checked)
            {
                pc = 1;
            }
            if (footPass.Checked)
            {
                ff = 1;
            }
            if (vvPass.Checked)
            {
                vv = 1;
            }
            if (fracturedLimbPass.Checked)
            {
                fl = 1;
            }
            if (teethPass.Checked)
            {
                dt = 1;
            }
            if (stammeringPass.Checked)
            {
                s = 1;
            }
            if (hrPass.Checked)
            {
                hr = 1;
            }
            if (sdPass.Checked)
            {
                sd = 1;
            }
            if (hbPass.Checked)
            {
                hb = 1;
            }
            if (fdPass.Checked)
            {
                fd = 1;
            }
            if (gtPass.Checked)
            {
                gt = 1;
            }
            if (atPass.Checked)
            {
                at = 1;
            }
            if (tgPass.Checked)
            {
                tg = 1;
            }
            if (hPass.Checked)
            {
                hydro = 1;
            }
            if (svPass.Checked)
            {
                sv = 1;
            }
            if (ptPass.Checked)
            {
                pvt = 1;
            }
            if (aidsPass.Checked)
            {
                aids = 1;
            }
            if (pilesPass.Checked)
            {
                pls = 1;
            }

            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set mweight=@a, rweight=@b, eyetest=@c, eartest=@d, nosetest=@e, phandi=@f, knee=@g, pchest=@h, feet=@i, vveins=@j, " +
                                                " flimbs=@k, dteeth=@l, stammering=@m, hrigidus=@n, skin=@o, heartbeat=@p, fingured=@q, gendertest=@r, anal=@s, testicalg=@t, hydrocele=@u," +
                                                " sveins=@v, pvtest=@w, aids=@x, piles=@y, m_flag=@z where application_Id='" + DropDownList2.Text + "'", conn);

            cmd.Parameters.AddWithValue("@a", float.Parse(txtweight.Text));
            cmd.Parameters.AddWithValue("@b", wight);
            cmd.Parameters.AddWithValue("@c", eyetest);
            cmd.Parameters.AddWithValue("@d", eartest);
            cmd.Parameters.AddWithValue("@e", ntest);
            cmd.Parameters.AddWithValue("@f", ph);
            cmd.Parameters.AddWithValue("@g", kk);
            cmd.Parameters.AddWithValue("@h", pc);
            cmd.Parameters.AddWithValue("@i", ff);
            cmd.Parameters.AddWithValue("@j", vv);
            cmd.Parameters.AddWithValue("@k", fl);
            cmd.Parameters.AddWithValue("@l", dt);
            cmd.Parameters.AddWithValue("@m", s);
            cmd.Parameters.AddWithValue("@n", hr);
            cmd.Parameters.AddWithValue("@o", sd);
            cmd.Parameters.AddWithValue("@p", hb);
            cmd.Parameters.AddWithValue("@q", fd);
            cmd.Parameters.AddWithValue("@r", gt);
            cmd.Parameters.AddWithValue("@s", at);
            cmd.Parameters.AddWithValue("@t", tg);
            cmd.Parameters.AddWithValue("@u", hydro);
            cmd.Parameters.AddWithValue("@v", sv);
            cmd.Parameters.AddWithValue("@w", pvt);
            cmd.Parameters.AddWithValue("@x", aids);
            cmd.Parameters.AddWithValue("@y", pls);
            cmd.Parameters.AddWithValue("@z", "1");

            cmd.ExecuteNonQuery();

            conn.Close();

            txtage.Text = "";
            txtweight.Text = "";
            rbfail.Checked = true;
            earFail.Checked = true;
            noseFail.Checked = true;
            handiFail.Checked = true;
            kneeFail.Checked = true;
            pChestFail.Checked = true;
            footFail.Checked = true;
            vvFail.Checked = true;
            fracturedLimbFail.Checked = true;
            teethFail.Checked = true;
            stammeringFail.Checked = true;
            hrFail.Checked = true;
            sdFail.Checked = true;
            hbFail.Checked = true;
            fdFail.Checked = true;
            gtFail.Checked = true;
            atFail.Checked = true;
            tgFail.Checked = true;
            hFail.Checked = true;
            svFail.Checked = true;
            ptFail.Checked = true;
            aidsFail.Checked = true;
            pilesFail.Checked = true;
            lblres.Text = "Submitted Successfully";
            lblres.ForeColor = Color.Green;
            fill_data();
            
        }

        protected void btnabs_Click(object sender, EventArgs e)
        {
            /*
            string s2;
            s2 = ConfigurationManager.ConnectionStrings["LocalMySqlServer"].ConnectionString;
            MySqlConnection conn = new MySqlConnection(s2);
            conn.Open();

            MySqlCommand cmd = new MySqlCommand("Update pb_city_data set mweight=@a, rweight=@b, eyetest=@c, eartest=@d, nosetest=@e, phandi=@f, knee=@g, pchest=@h, feet=@i, vveins=@j, " +
                                                " flimbs=@k, dteeth=@l, stammering=@m, hrigidus=@n, skin=@o, heartbeat=@p, fingured=@q, gender=@r, anal=@s, testicalg=@t, hydrocele=@u," +
                                                " sveins=@v, pvtest=@w, aids=@x, piles=@y, m_flag=@z where application_Id='" + DropDownList2.Text + "'", conn);


            cmd.Parameters.AddWithValue("@a", null);
            cmd.Parameters.AddWithValue("@b", null);
            cmd.Parameters.AddWithValue("@c", null);
            cmd.Parameters.AddWithValue("@d", null);
            cmd.Parameters.AddWithValue("@e", null);
            cmd.Parameters.AddWithValue("@f", null);
            cmd.Parameters.AddWithValue("@g", null);
            cmd.Parameters.AddWithValue("@h", null);
            cmd.Parameters.AddWithValue("@i", null);
            cmd.Parameters.AddWithValue("@j", null);
            cmd.Parameters.AddWithValue("@k", null);
            cmd.Parameters.AddWithValue("@l", null);
            cmd.Parameters.AddWithValue("@m", null);
            cmd.Parameters.AddWithValue("@n", null);
            cmd.Parameters.AddWithValue("@o", null);
            cmd.Parameters.AddWithValue("@p", null);
            cmd.Parameters.AddWithValue("@q", null);
            cmd.Parameters.AddWithValue("@r", null);
            cmd.Parameters.AddWithValue("@s", null);
            cmd.Parameters.AddWithValue("@t", null);
            cmd.Parameters.AddWithValue("@u", null);
            cmd.Parameters.AddWithValue("@v", null);
            cmd.Parameters.AddWithValue("@w", null);
            cmd.Parameters.AddWithValue("@x", null);
            cmd.Parameters.AddWithValue("@y", null);
            cmd.Parameters.AddWithValue("@z", "1");
            cmd.ExecuteNonQuery();

            conn.Close();

            txtage.Text = "";
            txtweight.Text = "";
            rbfail.Checked = true;
            earFail.Checked = true;
            noseFail.Checked = true;
            handiFail.Checked = true;
            kneeFail.Checked = true;
            pChestFail.Checked = true;
            footFail.Checked = true;
            vvFail.Checked = true;
            fracturedLimbFail.Checked = true;
            teethFail.Checked = true;
            stammeringFail.Checked = true;
            hrFail.Checked = true;
            sdFail.Checked = true;
            hbFail.Checked = true;
            fdFail.Checked = true;
            gtFail.Checked = true;
            atFail.Checked = true;
            tgFail.Checked = true;
            hFail.Checked = true;
            svFail.Checked = true;
            ptFail.Checked = true;
            aidsFail.Checked = true;
            pilesFail.Checked = true;

            lblres.ForeColor = Color.Red;
            lblres.Text = "Marked Absent";
            fill_data();
           // t1();
           */
        }
    }
}