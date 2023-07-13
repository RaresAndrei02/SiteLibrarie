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
    public partial class AdminPublicatie : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //adauga
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (verificaEditura())
            {
                Response.Write("<script>alert('Acest autor deja exista !');</script>");
            }
            else
            {
                AdaugaEditura();
            }
        }

        //modifica
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (verificaEditura())
            {
                modificaEditura();

            }
            else
            {
                Response.Write("<script>alert('Aceasta autor nu exista !');</script>");
            }
        }

        //sterge
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (verificaEditura())
            {
                stergeEditura();

            }
            else
            {
                Response.Write("<script>alert('Acest autors nu exista !');</script>");
            }
        }

        //go
        protected void Button1_Click(object sender, EventArgs e)
        {
            ReturneazaDupaEdituraID();
        }

        void ReturneazaDupaEdituraID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Editura where ID_Editura='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void stergeEditura()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from Editura where ID_Editura='" + TextBox1.Text.Trim() + "' ", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Editura stearsa cu succes !');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void modificaEditura()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update Editura set Nume_Editura = @Editura where ID_Editurar='" + TextBox1.Text.Trim() + "' ", con);

                cmd.Parameters.AddWithValue("@Editura", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Editura modificata cu succes');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void AdaugaEditura()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Editura(ID_Editura,Editura) values(@ID_Editura,@Editura)", con);
                cmd.Parameters.AddWithValue("@ID_Editura", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@Editura", TextBox2.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Editura adaugata cu succes');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool verificaEditura()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Editura where ID_Editura='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void formular()
        {
            TextBox1.Text = " ";
            TextBox2.Text = " ";
        }
    

    }
}