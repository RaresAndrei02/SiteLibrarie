﻿using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteLibrarie.imgs.imgs
{
    public partial class AdminAutorManagement : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //buton adauga
        protected void Button2_Click(object sender, EventArgs e)
        {
            if(verificaAutor())
            {
                Response.Write("<script>alert('Acest autor deja exista !');</script>");
            }
            else
            {
                AdaugaAutor();
            }
        }

        //buron modifica
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (verificaAutor())
            {   
                modificaAutor();
               
            }
            else
            {
                 Response.Write("<script>alert('Acest autor nu exista !');</script>");
            }
        }

        //buton sterge
        protected void Button4_Click(object sender, EventArgs e)
        {
            if (verificaAutor())
            {
                stergeAutor();

            }
            else
            {
                Response.Write("<script>alert('Acest autors nu exista !');</script>");
            }
        }

        //buton go
        protected void Button1_Click(object sender, EventArgs e)
        {
            ReturneazaDupaAutorID();
        }

        //functii

        void ReturneazaDupaAutorID() 
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Autori where ID_Autor='" + ID_Autor.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    Nume_Autor.Text = dt.Rows[0][1].ToString();
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

        void stergeAutor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("delete from Autori where ID_Autor='" + ID_Autor.Text.Trim() + "' ", con);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Autor sters cu succes !');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void modificaAutor()
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("update Autori set Nume_Autor = @Nume_Autor where ID_Autor='"+ID_Autor.Text.Trim()+"' ", con);
               
                cmd.Parameters.AddWithValue("@Nume_Autor", Nume_Autor.Text.Trim());


                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Autor modificat cu succes');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void AdaugaAutor() 
        {
            try
            {

                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("insert into Autori(ID_Autor,Nume_Autor) values(@ID_Autor,@Nume_Autor)", con);
                cmd.Parameters.AddWithValue("@ID_Autor", ID_Autor.Text.Trim());
                cmd.Parameters.AddWithValue("@Nume_Autor", Nume_Autor.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Autor adaugat cu succes');</script>");
                formular();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        bool verificaAutor()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from Autori where ID_Autor='" + ID_Autor.Text.Trim() + "';", con);
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
            ID_Autor.Text = " ";
            Nume_Autor.Text = " ";
        }
    }
}