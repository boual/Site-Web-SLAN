using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SLAN
{
    public partial class NestedMasterPage1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BT_CS_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Tournois_CS_GO.aspx");
        }

        protected void BT_RL_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Tournois_RL.aspx");
        }

        protected void BT_LOL_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Tournois_LOL.aspx");
        }
    }
}