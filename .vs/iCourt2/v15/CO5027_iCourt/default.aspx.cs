namespace CO5027_iCourt
{
    using System;
    using System.Configuration;
    using System.Data;
    using System.Data.SqlClient;
    using Models;

    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connectionString = ConfigurationManager.ConnectionStrings["iCourtDatabaseConnection"].ConnectionString;
                DataTable dt = new DataTable();
                SqlConnection conn = new SqlConnection(connectionString);
                using (conn)
                {
                    SqlDataAdapter da = new SqlDataAdapter("SELECT * FROM Facility", conn);
                    da.Fill(dt);
                }
                this.rptFacilities.DataSource = dt;
                this.rptFacilities.DataBind();
            }
        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {
            Booking booking = null;
            iCourtDatabaseConnection db = null;

            try
            {
                booking = new Booking();
                booking.FacilityId = Int32.Parse(this.ddlFacilities.Text);
                if (!string.IsNullOrEmpty(this.txtStartDate.Text))
                    booking.StartDate = Convert.ToDateTime(this.txtStartDate.Text);
                if (!string.IsNullOrEmpty(this.txtEndDate.Text))
                    booking.EndDate = Convert.ToDateTime(this.txtEndDate.Text);
                if (!string.IsNullOrEmpty(this.txtStartTime.Text))
                    booking.StartTime = this.txtStartTime.Text;
                if (!string.IsNullOrEmpty(this.txtEndTime.Text))
                    booking.EndTime = this.txtEndTime.Text;

                db = new iCourtDatabaseConnection();
                db.Bookings.Add(booking);
                db.SaveChanges();
            }
            catch (Exception exception)
            {
                Console.WriteLine(exception);
            }
        }
    }
}