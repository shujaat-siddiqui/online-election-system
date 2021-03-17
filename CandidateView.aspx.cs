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
    public partial class CandidateView : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineElectionSystem"].ToString());
        SqlCommand cmd;
        SqlDataReader dr;
        String idnumber, path;

        protected void Page_Load(object sender, EventArgs e)
        {
            idnumber = Session["idnumber"].ToString();
            loadData();
        }

        private void loadData()
        {
            con.Open();
            cmd = new SqlCommand("select * from Candidate where idnumber ='" + idnumber + "'", con);
            dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                lbl_name.Text = dr["Name"].ToString();
                txt_address.Text = dr["Address"].ToString();
                txt_DOB.Text = dr["DOB"].ToString();
                txt_gender.Text = dr["Gender"].ToString();
                txt_party.Text = dr["Party"].ToString();
                path = dr["Photo"].ToString();
                photo.ImageUrl = path;
            }
            dr.Close();
            con.Close();


        }
    }
}