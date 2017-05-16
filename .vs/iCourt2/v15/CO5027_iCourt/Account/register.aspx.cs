namespace CO5027_iCourt
{
    using System.Linq;
    using System;
    using System.Web;
    using Microsoft.AspNet.Identity;
    using Microsoft.AspNet.Identity.EntityFramework;
    using Microsoft.Owin.Security;

    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancel_Click(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            try
            {
                UserStore<IdentityUser> userStore = new UserStore<IdentityUser>();

                userStore.Context.Database.Connection.ConnectionString = System.Configuration.ConfigurationManager
                    .ConnectionStrings["iCourtDatabaseConnection"].ConnectionString;

                UserManager<IdentityUser> manager = new UserManager<IdentityUser>(userStore);

                //Create new user and try to store in DB
                IdentityUser user = new IdentityUser();
                user.UserName = this.txtEmail.Text;

                if (this.txtPassword.Text == this.txtConfirmPassword.Text)
                {
                    try
                    {
                        //Create user object
                        //Database will be created/expanded automatically
                        IdentityResult result = manager.Create(user, this.txtPassword.Text);

                        if (result.Succeeded)
                        {
                            //Store user in DB
                            var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;

                            //Set to log in new user by Cookie.
                            var userIdentity =
                                manager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);

                            //Log in the new user and redirect to homepage
                            authenticationManager.SignIn(new AuthenticationProperties(), userIdentity);
                            Response.Redirect("~/default.aspx");
                        }
                        else
                        {
                            this.litRegisterError.Text = result.Errors.FirstOrDefault();
                        }
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex);
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error message: " + ex);
            }
        }
    }
}