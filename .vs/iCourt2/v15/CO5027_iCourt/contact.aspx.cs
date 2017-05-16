namespace CO5027_iCourt
{
    using System;
    using System.Net.Mail;

    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            if (!this.IsValid)
            {
                return;
            }
            else
            {
                //create mail message
                MailMessage mailMsg = new MailMessage();

                //set address
                mailMsg.From = new MailAddress("another@mail-address.com");
                mailMsg.To.Add("icourt2017@gmail.com");

                //set content
                mailMsg.Subject = "Message via gmail from " + this.txtName.Text;
                mailMsg.IsBodyHtml = true;
                mailMsg.Body = "<html><body>"
                     + this.txtEmail.Text
                     + Environment.NewLine //"<br/>"
                     + this.txtSubject.Text +
                     "<br/>"
                     + this.txtMessage.Text +
                     "</body></html>";

                //send msgs
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("icourt2017@gmail.com", "testing123");
                smtp.Send(mailMsg);

                //msg status
                this.lblStatus.ForeColor = System.Drawing.Color.Blue;
                this.lblStatus.Text = "Mail was sent successfully!";
              }
            }
            
        }
    }
        
    







