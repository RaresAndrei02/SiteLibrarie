using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteLibrarie
{
    public partial class UserLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('Logare reusita');</script>");

            try 
            {
                SqlConnection con = new SqlConnection(strcon);
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("select * from Utilizatori where ID_Utilizator='"+TextBox1.Text.Trim()+ "' and Parola='" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Logare reusita');</script>");
                        Session["utilizator"] = dr.GetValue(8).ToString();
                        Session["nume"] = dr.GetValue(0).ToString();
                        Session["rol"] = "Utilizator";
                        Session["status"] = dr.GetValue(10).ToString();
                    }
                    Response.Redirect("Homepage.aspx");
                }
                else
                    {
                    Response.Write("<script>alert('User-ul nu exista');</script>");
                }
            }
            catch(Exception ex)
            {

            }
        }
    }
}