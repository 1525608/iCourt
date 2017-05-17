namespace CO5027_iCourt.Admin
{
    using System;
    using System.Configuration;
    using System.Data;
    using System.Data.SqlClient;
    using Microsoft.AspNet.Identity;

    public partial class Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                try
                {
                    string userId = this.Context.User.Identity.GetUserId();
                    string userName = this.Context.User.Identity.Name;

                    if (userId != null && userName == "Admin")
                    {
                        string connectionString = ConfigurationManager.ConnectionStrings["iCourtDatabaseConnection"].ConnectionString;
                        DataTable dt = new DataTable();
                        SqlConnection conn = new SqlConnection(connectionString);
                        using (conn)
                        {
                            SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Facility", conn);
                            da.Fill(dt);
                        }
                        //this.rptFacilities.DataSource = dt;
                        //this.rptFacilities.DataBind();
                    }
                    else
                    {
                        this.Response.Redirect("~/default.aspx");
                    }
                }
                catch (Exception exception)
                {
                    Console.WriteLine(exception);
                    throw;
                }

            }
        }
    }
}