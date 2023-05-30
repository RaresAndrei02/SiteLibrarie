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
    public partial class InregistrareUtilizator : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        public object TextBox8 { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //butonul de inregistrare este apasat

        protected void Button4_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('test');</script>");
            if(VerificaMembru())
            {
                Response.Write("<script>alert('Exista un utilizator cu acest Username');</script>");
            }
            else 
            {
                NouMembru();
            }


        }

        private bool VerificaMembru()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Utilizatori where ID_Utilizator='"+ID_Utilizator.Text.Trim()+"';", con);
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
                
                con.Close();
                Response.Write("<script>alert('Inregistrare realizata cu succes');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }

            
        }

        void NouMembru()
        {

            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Utilizatori(NumeComplet,DataNastere,NumarTelefon,Email,Tara,Oras,CodPostal,AdresaCompleta,ID_Utilizator,Parola,Status) values(@NumeComplet,@DataNastere,@NumarTelefon,@Email,@Tara,@Oras,@CodPostal,@AdresaCompleta,@ID_Utilizator,@Parola,@Status)", con);
                cmd.Parameters.AddWithValue("@NumeComplet", NumeComplet.Text.Trim());
                cmd.Parameters.AddWithValue("@DataNastere", DataNastere.Text.Trim());
                cmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                cmd.Parameters.AddWithValue("@NumarTelefon", NumarTelefon.Text.Trim());
                cmd.Parameters.AddWithValue("@Tara", Tara.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Oras", Oras.Text.Trim());
                cmd.Parameters.AddWithValue("@CodPostal", CodPostal.Text.Trim());
                cmd.Parameters.AddWithValue("@AdresaCompleta", AdresaCompleta.Text.Trim());
                cmd.Parameters.AddWithValue("@ID_Utilizator", ID_Utilizator.Text.Trim());
                cmd.Parameters.AddWithValue("@Parola", Parola.Text.Trim());
                cmd.Parameters.AddWithValue("@Status", "Pending");

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Inregistrare realizata cu succes');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

        }




    }
}