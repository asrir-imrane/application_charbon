using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Bateaux
{
    public partial class deleteBateaux : System.Web.UI.Page
    {
        protected void DeleteButton_Bateau_Click(object sender, EventArgs e)
        {
            string IdBateau = Id_bateauSupp.Value;
            int IdBT = int.Parse(IdBateau);

            delete Delete = new delete();
            Delete.SupprimerBateau(IdBT);

            // Rediriger vers la page d'index après la suppressionSystem.FormatException : 'Le format de la chaîne d'entrée est incorrect.'
            // Response.Redirect("index.aspx#CS");
            string IdContrat = Request.QueryString["id"];
            Response.Redirect("Bateaux.aspx?id=" + IdContrat);
        }

    }
}