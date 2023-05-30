using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SiteLibrarie
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
              if (Session["rol"] == null)
                {
                    LinkButton1.Visible = true; //buton logare
                    LinkButton2.Visible = true; //buton inregistrare

                    LinkButton3.Visible = false; //buton delogare
                    LinkButton7.Visible = false; //buton utilizator

                    LinkButton6.Visible = true; //logare admin
                    LinkButton11.Visible = false; //buton autor
                    LinkButton12.Visible = false; //buton editura
                    LinkButton8.Visible = false; //buton inventar
                    LinkButton9.Visible = false; //buton carti
                    LinkButton10.Visible = false; //buton management utilizatori
                } 
              else if (Session["rol"].Equals("Utilizator"))
                {
                    LinkButton1.Visible = false; //buton logare
                    LinkButton2.Visible = false; //buton inregistrare

                    LinkButton3.Visible = true; //buton delogare
                    LinkButton7.Visible = true; //buton utilizator
                    LinkButton7.Text = "Hello "+Session["utilizator"].ToString();

                    LinkButton6.Visible = true; //logare admin
                    LinkButton11.Visible = false; //buton autor
                    LinkButton12.Visible = false; //buton editura
                    LinkButton8.Visible = false; //buton inventar
                    LinkButton9.Visible = false; //buton carti
                    LinkButton10.Visible = false; //buton management utilizatori
                }
                else if (Session["rol"].Equals("Admin"))
                {
                    LinkButton1.Visible = false; //buton logare
                    LinkButton2.Visible = false; //buton inregistrare

                    LinkButton3.Visible = true; //buton delogare
                    LinkButton7.Visible = true; //buton utilizator
                    LinkButton7.Text = "Hello Admin ";

                    LinkButton6.Visible = false; //logare admin
                    LinkButton11.Visible = true; //buton autor
                    LinkButton12.Visible = true; //buton editura
                    LinkButton8.Visible = true; //buton inventar
                    LinkButton9.Visible = true; //buton carti
                    LinkButton10.Visible = true; //buton management utilizatori
                }
            }
            catch(Exception ex)
            {
                
            }
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminLogin.aspx");
        }

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdninAutorManagement.aspx");
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEmitereCarti.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inventar.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPublicatie.aspx");
        }

        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminManagementUtilizatori.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            //utilizator
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["Utilizator"] = "";
            Session["Nume"] = "";
            Session["rol"] = "";
            Session["status"] = "";

            LinkButton1.Visible = true; 
            LinkButton2.Visible = true; 

            LinkButton3.Visible = false; 
            LinkButton7.Visible = false; 


            LinkButton6.Visible = true; 
            LinkButton11.Visible = false; 
            LinkButton12.Visible = false; 
            LinkButton8.Visible = false; 
            LinkButton9.Visible = false;
            LinkButton10.Visible = false; 
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("InregistrareUtilizator.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserLogin.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("VeziCarti.aspx");
        }
    }
}