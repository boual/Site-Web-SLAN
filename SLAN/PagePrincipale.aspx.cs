using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLAN___Site_Web
{
    public partial class PagePrincipale : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Ib_Gauche_Click(object sender, ImageClickEventArgs e)
        {
            if (lb_Annee.Text == "2017")
            {
                lb_Annee.Text = "2016";
                image_Edition.ImageUrl = "~/ImagesPagePrincipale/SLAN2016.jpg";
            }
        }

        protected void Ib_Droite_Click(object sender, ImageClickEventArgs e)
        {
            if (lb_Annee.Text == "2016")
            {
                lb_Annee.Text = "2017";
                image_Edition.ImageUrl = "~/ImagesPagePrincipale/SLAN2017.jpg";
            }
        }
    }
}