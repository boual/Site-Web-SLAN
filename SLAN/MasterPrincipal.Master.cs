using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLAN
{
    public partial class MasterPrincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Pour traduire en anglais
            if (System.Threading.Thread.CurrentThread.CurrentUICulture.ToString() == "en-US")
            {
                Tournois.ImageUrl = "Tournament.png";
                Reservation.ImageUrl = "Reservations.png";
                Commanditaires.ImageUrl = "Sponsors.png";
                droit.Text = "Slan Revolution All right reserved.";
            }
        }
        //Redirige vers la page réservation
        protected void Réservation_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Reservation.aspx");
        }

        protected void Tournois_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Tournois_CS_GO.aspx");
        }

        protected void Information_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Informations.aspx");
        }

        protected void Slan_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/PagePrincipale.aspx");
        }
    }
}