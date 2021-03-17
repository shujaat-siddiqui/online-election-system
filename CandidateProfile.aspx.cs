using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace Online_Election_System
{
    public partial class CandidateProfile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String email, path;

        protected void Page_Load(object sender, EventArgs e)
        {
            email = Session["email"].ToString();
            loadData();
        }

        private void loadData()
        {
            con.Open();
            cmd = new SqlCommand("select * from Candidate where Email ='" + email + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_name.Text = dr["Name"].ToString();
                txt_address.Text = dr["Address"].ToString();
                txt_DOB.Text = dr["DOB"].ToString();
                txt_gender.Text = dr["Gender"].ToString();
                txt_party.Text = dr["Party"].ToString();
                txt_mobile.Text = dr["Mobile"].ToString();
                txt_email.Text = dr["Email"].ToString();

                path = dr["Photo"].ToString();
                photo.ImageUrl = path;
            }
            dr.Close();
            con.Close();


        }
    }
}