namespace CO5027_iCourt
{
    using System;
    using System.Web;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using Microsoft.Owin.Security;

    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            try
            {
                UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

                userStore.Context.Database.Connection.ConnectionString = System.Configuration.ConfigurationManager.ConnectionStrings["iCourtDatabaseConnection"].ConnectionString;

                UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

                var user = manager.Find(this.txtEmail.Text, this.txtPassword.Text);

                if (user != null)
                {
                    // Call OWIN functionality
                    var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                    var userIdentity = manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                    //Sign in the user
                    authenticationManager.SignIn(new AuthenticationProperties
                    {
                        IsPersistent = false
                    }, userIdentity);

                    //Redirect user to homepage
                    this.Response.Redirect("~/default.aspx");
                }
                else
                {
                    this.lblLoginError.Text = "Invalid email or password. Please try again.";
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        private void LogUserIn(UserManager<IdentityUser> userManager, IdentityUser user)
        {
            try
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                this.Response.Redirect("~/default.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}