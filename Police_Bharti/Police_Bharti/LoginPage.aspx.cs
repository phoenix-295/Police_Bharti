﻿using System;
using System.Web.Security;

namespace Police_Bharti
{
    public partial class LoginPage : System.Web.UI.Page
    {
        string currentuser1;
        protected void Page_Load(object sender, EventArgs e)
        {
            currentuser1 = User.Identity.Name.ToString();
            getadmin();
            getdsp();
            getpsi();
            cityadmin1();
            graminadmin1();
        }

        protected void getadmin()
        {
            bool x;
            x = Roles.IsUserInRole("Admin");
            if (x == true)
            {
                Response.Redirect("/Admin/Home.aspx");
            }
        }

        protected void getdsp()
        {
            bool x;
            
            x = Roles.IsUserInRole("DSP");
            if (x == true)
            {
                Response.Redirect("/Dsp/Dsp_Home.aspx");
            }
        }

        protected void getpsi()
        {
            bool x;
            x = Roles.IsUserInRole("PSI");
            if (x == true)
            {
                Response.Redirect("/Psi/PSI_Home.aspx");
            }
        }

        protected void cityadmin1()
        {
            bool x;
            x = Roles.IsUserInRole("CityAdmin");
            if (x == true)
            {
                Response.Redirect("/CityAdmin/CityAdminHome.aspx");
            }
        }

        protected void graminadmin1()
        {
            bool x;
            x = Roles.IsUserInRole("GraminAdmin");
            if (x == true)
            {
                Response.Redirect("/GraminAdmin/GraminAdminHome.aspx");
            }
        }
    }
}