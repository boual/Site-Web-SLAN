using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLAN
{
    public partial class Réservation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            //pour pas doubler l'information lors de reload
            place.Text = "";
            //afficher place disponible
            listplace();
        }

        protected void reserver_Click(object sender, EventArgs e)
        {
            try
            {
                //Vérifie si les places sont valides
                if (Int32.Parse(tbplace.Text) < 1 || Int32.Parse(tbplace.Text) > 210)
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Le numero de place n est pas valide')</script>");
                }
                else
                {
                    //Vérifie si la place est libre
                    if (GridView1.Rows[Int32.Parse(tbplace.Text) - 1].Cells[4].Text == "0")
                    {
                        //Vérifie si le billet est normal ou invalid
                        if (Int32.Parse(tbBill.Text) < 1 || Int32.Parse(tbBill.Text) > 200)
                        {
                            //vérifie si le billet est invalide ou vip
                            if (Int32.Parse(tbBill.Text) < 1 || Int32.Parse(tbBill.Text) > 210)
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Le numero de billet n est pas valide')</script>");
                            }
                            else
                            {
                                //s'assure que la place est VIP
                                if (Int32.Parse(tbplace.Text) > 200)
                                {
                                    //vérifie si le billet est déja utilisé
                                    Boolean verif = true;
                                    foreach (GridViewRow range in GridView1.Rows)
                                    {
                                        if (range.Cells[4].Text == tbBill.Text)
                                        {
                                            verif = false;
                                        }

                                    }
                            if (verif == true)
                            {
                                GridView1.DataSourceID = "SqlDataSource2";
                                //Écris la place réservé VIP
                                using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Place.mdf;Integrated Security=True"))
                                {
                                    SqlCommand CmdSql = new SqlCommand("Update Place set Prenom=@Prenom, Nom=@Nom, [Email]=@Email, [No Billet]= @Billet where [No place]=@place", conn);
                                    CmdSql.Parameters.AddWithValue("@Email", tbemail.Text);
                                    CmdSql.Parameters.AddWithValue("@Nom", tbNom.Text);
                                    CmdSql.Parameters.AddWithValue("@Prenom", tbPrenom.Text);
                                    CmdSql.Parameters.AddWithValue("@Billet", tbBill.Text);
                                    CmdSql.Parameters.AddWithValue("@place", Int32.Parse(tbplace.Text));
                                    conn.Open();
                                    try
                                    {
                                        int a=CmdSql.ExecuteNonQuery();
                                      
                                        if (a == 0)
                                        {
                                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('La place est déja réservé')</script>");

                                        }
                                        else
                                        {
                                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Votre place est réservé')</script>");
                                        }
                                        Response.AddHeader("REFRESH", "0;URL=Reservation.aspx");

                                    }
                                    catch (System.Data.SqlClient.SqlException ex)
                                    {
                                        //Message d'erreur si la commande ne marche pas
                                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Une Erreur c est produite : " + ex.Message + "')</script>");
                                    }

                                    conn.Close();
                                }
               
                            }
                            else
                            {
                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Le billet à déja été utilisé')</script>");
                            }
                                

                                }else
                                {
                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Choisir une place Vip de 201 à 210')</script>");
                                }
                                
                            }
                        }
                        else
                        {
                            Boolean verif = true;
                            foreach (GridViewRow range in GridView1.Rows)
                            {
                                if (range.Cells[4].Text == tbBill.Text)
                                {
                                    verif = false;
                                }
                            }
                                if (verif == true)
                                {
                                    if (Int32.Parse(tbplace.Text) < 201)
                                    {
                                        //Empêche une personne de laisser sa page ouvert et enregistrer par dessus quelquun.
                                        GridView1.DataSourceID = "SqlDataSource2";
                                        
                                        //Écris place normal
                                        using (SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Place.mdf;Integrated Security=True"))
                                        {
                                            SqlCommand CmdSql = new SqlCommand("Update Place set Prenom=@Prenom, Nom=@Nom, [Email]=@Email, [No Billet]= @Billet where [No place]=@place and [No Billet]=0", conn);
                                            CmdSql.Parameters.AddWithValue("@Email", tbemail.Text);
                                            CmdSql.Parameters.AddWithValue("@Nom", tbNom.Text);
                                            CmdSql.Parameters.AddWithValue("@Prenom", tbPrenom.Text);
                                            CmdSql.Parameters.AddWithValue("@Billet", Int32.Parse(tbBill.Text));
                                            CmdSql.Parameters.AddWithValue("@place", Int32.Parse(tbplace.Text));
                                            conn.Open();
                                            try
                                            {
                                                
                                                int a=CmdSql.ExecuteNonQuery();
                                                
                                                if (a == 0)
                                                {
                                                   Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('La place est déja réservée')</script>");
                                                    
                                                }
                                                else
                                                {
                                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Votre place est réservée')</script>");
                                                    
                                                }
                                                Response.AddHeader("REFRESH", "0;URL=Reservation.aspx");
                                               
                                                
                                            }
                                            catch (System.Data.SqlClient.SqlException ex)
                                            {
                                                //Message d'erreur si la commande ne marche pas
                                                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Une Erreur c est produite : " + ex.Message + "')</script>");
                                                
                                            }

                                            conn.Close();
                                        }
                                    }
                                    else
                                    {
                                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('La place choisi est réserver au vip')</script>");
                                    }
                                   


                                }
                                else
                                {
                                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Billet déja utilisée ou place vip selectionné')</script>");
                                }
                           
                        }


                    }
                    else
                    {
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('La place est déja réservée')</script>");
                    }
                }
            }
            catch(Exception ex)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('" + ex.Message + "')</script>");
            }
           
            
        }
        private void listplace()
        {
            //Compteur pour afficher 50 place par ligne
            int compteur = 0;
            foreach (GridViewRow range in GridView1.Rows)
            {
                //Affiche les places libres
                if (range.Cells[4].Text == "0")
                {
                    if (compteur == 50)
                    {
                        place.Text = place.Text + "<br />";
                        compteur = 0;
                    }
                    if (place.Text != "")
                        place.Text = place.Text + "," + range.Cells[0].Text;
                    else
                        place.Text = place.Text + range.Cells[0].Text;
                    compteur = compteur + 1;
                }
            }
        }
    }
    
}