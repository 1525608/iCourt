using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CO5027_iCourt
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    var user = this.Context.User.Identity;

                    if (user.IsAuthenticated)
                    {
                        this.litStatus.Text = this.Context.User.Identity.Name;

                        this.lnkLogin.Visible = false;
                        this.lnkRegister.Visible = false;

                        this.btnLogout.Visible = true;
                        this.litStatus.Visible = true;
                    }
                    else
                    {
                        this.lnkLogin.Visible = true;
                        this.lnkRegister.Visible = true;

                        this.btnLogout.Visible = false;
                        this.litStatus.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }

        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            try
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                //Remove session
                if (!string.IsNullOrEmpty("CurrentUserSession") && HttpContext.Current.Session["CurrentUserSession"] != null)
                {
                    HttpContext.Current.Session.Remove("CurrentUserSession");
                }

                authenticationManager.SignOut();

                this.Response.Redirect("~/default.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}