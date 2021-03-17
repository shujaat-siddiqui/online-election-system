using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace Online_Election_System
{
    public partial class SignupVoter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String email, gender, emailverify = "No", status = "No";
        int otp, idnumber;
        String id = "bazingahub@mail.com";
        String pass = "Bazinga@2020";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            generateidnumber();
            string photo = "~/VoterPhotos/" + photoupload.FileName;
            photoupload.SaveAs(Server.MapPath(photo).ToString());
            string document = "~/VoterDocuments/" + documentupload.FileName;
            documentupload.SaveAs(Server.MapPath(document).ToString());
            email = txt_email.Text;
            if (rad_male.Checked == true)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }

            Random rnd = new Random();
            otp = rnd.Next(100000, 999999);

            Session["otp"] = otp;
            Session["idnumber"] = idnumber;

            try
            {
                int port = 587;
                string host = "smtp.gmail.com";
                string username = "bazingahub@gmail.com";
                string password = "Bazinga@2020";
                string mailFrom = "bazingahub@gmail.com";
                string mailTo = email;
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
                }
                con.Open();
                cmd = new SqlCommand("insert into Voter values('" + idnumber + "','" + txt_name.Text + "','" + txt_address.Text + "','" + txt_DOB.Text + "','" + gender + "','" + txt_mobile.Text + "','" + email + "','" + txt_password.Text + "','" + photo + "','" + document + "','" + emailverify + "','" + status + "','" + status + "')", con);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write(@"<script language='javascript'>alert('OTP has been sent on your Email.');</script>");
                Response.Redirect("EmailVerificationVoter.aspx");
               
            }
            catch (Exception ex)
            {
                Response.Write(@"<script language='javascript'>alert('OTP Not sent.. Please try again.');</script>");
            }            

        }    

        void generateidnumber()
        {
            con.Open();
            cmd = new SqlCommand("select * from Voter where idnumber=(select max(idnumber)from Voter)", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                String pn = dr["idnumber"].ToString();
                idnumber = Convert.ToInt32(pn);
                idnumber++;

            }
            else
            {
                idnumber = 1;
            }

            dr.Close();
            con.Close();

        }
    }
}