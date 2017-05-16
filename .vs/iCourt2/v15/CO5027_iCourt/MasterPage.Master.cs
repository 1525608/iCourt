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
                    var user = Context.User.Identity;

                    if (user.IsAuthenticated)
                    {
                        this.litStatus.Text = Context.User.Identity.Name;

                        this.lnkLogin.Visible = false;
                        this.lnkRegister.Visible = false;

                        this.lnkLogout.Visible = true;
                        this.litStatus.Visible = true;
                    }
                    else
                    {
                        this.lnkLogin.Visible = true;
                        this.lnkRegister.Visible = true;

                        this.lnkLogout.Visible = false;
                        this.litStatus.Visible = false;
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine(ex);
                }
            }

        }

        protected void lnkLogout_Click(object sender, EventArgs e)
        {
            try
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                authenticationManager.SignOut();

                Response.Redirect("~/default.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}