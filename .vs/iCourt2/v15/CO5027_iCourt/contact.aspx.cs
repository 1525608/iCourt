using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;


namespace CO5027_iCourt
{
    public partial class contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)

        {
            if (!IsValid)
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
                mailMsg.Subject = "Message via gmail from" + senderName.Text.ToString();
                mailMsg.IsBodyHtml = true;
                mailMsg.Body = "<html><body>"
                     + senderEmail.Text.ToString() +
                     "<br><br>"
                     + subject.Text.ToString() +
                     "<br><br>"
                     + message.Text.ToString() +
                     "</body></html>";

                //send msgs
                SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587);
                smtp.EnableSsl = true;
                smtp.Credentials = new System.Net.NetworkCredential("icourt2017@gmail.com", "testing123");
                smtp.Send(mailMsg);

                //msg status
                Status.ForeColor = System.Drawing.Color.Blue;
                Status.Text = "Mail was sent successfully!";
              }
            }
            
        }
    }
        
    







