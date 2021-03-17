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
    public partial class AdVoterView : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String idnumber, path, path2, activestatus = "Yes";

        protected void Page_Load(object sender, EventArgs e)
        {
            idnumber = Session["idnumber"].ToString();
            loadData();
        }

        protected void btn_verify_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new SqlCommand("update Voter set ActiveStatus = '" + activestatus + "' where idnumber = '" + idnumber + "'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Response.Write("<script> alert('Verified')</script>");
        }

        private void loadData()
        {
            con.Open();
            cmd = new SqlCommand("select * from Voter where idnumber ='" + idnumber + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_name.Text = dr["Name"].ToString();
                txt_address.Text = dr["Address"].ToString();
                txt_DOB.Text = dr["DOB"].ToString();
                txt_gender.Text = dr["Gender"].ToString();
                txt_emailverify.Text = dr["EmailVerification"].ToString();
                txt_activestatus.Text = dr["ActiveStatus"].ToString();

                path = dr["Photo"].ToString();
                photo.ImageUrl = path;

                path2 = dr["Document"].ToString();
                document.ImageUrl = path2;
            }
            dr.Close();
            con.Close();

        }
    }
}