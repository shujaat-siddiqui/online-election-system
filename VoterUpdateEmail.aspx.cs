using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;


namespace Online_Election_System
{
    public partial class VoterUpdateEmail : System.Web.UI.Page
    {
        int otp;
        String newemail;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            newemail = txt_newemail.Text;
            Random rnd = new Random();
            otp = rnd.Next(100000, 999999);

            try
            {
                int port = 587;
                string host = "smtp.gmail.com";
                string username = "bazingahub@gmail.com";
                string password = "Bazinga@2020";
                string mailFrom = "bazingahub@gmail.com";
                string mailTo = newemail;
                string mailTitle = "OTP Verification";
                string mailMessage = "Your One Time Password is : " + otp.ToString() + "\n\nEnter this OTP in the verification page";

                using (SmtpClient client = new SmtpClient())
                {
                    MailAddress from = new MailAddress(mailFrom);
                    MailMessage message = new MailMessage
                    {
                        From = from
                    };
                    message.To.Add(mailTo);
                    message.Subject = mailTitle;
                    message.Body = mailMessage;
                    message.IsBodyHtml = true;
                    client.DeliveryMethod = SmtpDeliveryMethod.Network;
                    client.UseDefaultCredentials = false;
                    client.Host = host;
                    client.Port = port;
                    client.EnableSsl = true;
                    client.Credentials = new NetworkCredential
                    {
                        UserName = username,
                        Password = password
                    };
                    client.Send(message);
                    Session["otp"] = otp;
                    Session["newemail"] = newemail;
                    Response.Redirect("VoterUpdateEmailVerify.aspx");
                }
            }
            catch (Exception ex)
            {
                Response.Write(@"<script language='javascript'>alert('OTP Not sent.. Please Try later.');</script>");
            }
        }
    }
}