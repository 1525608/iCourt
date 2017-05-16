namespace CO5027_iCourt
{
    using System;
    using App_Data;

    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void BtnBook_Click(object sender, EventArgs e)
        {
            Booking booking = null;
            iCourtDatabaseConnection db = null;

            try
            {
                //TODO: Validation for unavailable dates and times
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