using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Vérifier si le paramètre showCentraleStock est présent dans la chaîne de requête
           /* if (Request.QueryString["showCentraleStock"] == "true")
            {
                // Afficher la page CentraleStock.aspx dans l'iframe
                centraleStockFrame.Attributes["src"] = "CentraleStock.aspx";
                centraleStockFrame.Attributes["style"] = "display:block;";
            }*/
        }
    }
}