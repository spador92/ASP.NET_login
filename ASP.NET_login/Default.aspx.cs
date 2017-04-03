using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace ASP.NET_login
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ButtonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DatabaseConnectionString"].ConnectionString);
            con.Open();
            string query = "select count(*) from [Table] where username='"+TextBoxUsername.Text+"'" + "and password ='" +TextBoxPassword.Text+"'";

            SqlCommand cmd = new SqlCommand(query, con);
            string output = cmd.ExecuteScalar().ToString();

            if(output == "1")
            {
                Session["user"] = TextBoxUsername.Text;
                Response.Redirect("~/Welcome.aspx");
            }
            else
            {
                Response.Write("Login Failed");
            }
        }

    }
}