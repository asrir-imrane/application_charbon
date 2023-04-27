using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteAppelOffre : System.Web.UI.Page
    {
        protected void DeleteButton_AO_Click(object sender, EventArgs e)
        {
            string Id_AOffre = Id_AOSupp.Value;
            int IdAo = int.Parse(Id_AOffre);

            delete Delete = new delete();
            Delete.SupprimerAppelOffre(IdAo);

            // Rediriger vers la page d'index après la suppressionSystem.FormatException : 'Le format de la chaîne d'entrée est incorrect.'
            // Response.Redirect("index.aspx#CS");
            string IdPlanning = Request.QueryString["id"];
            Response.Redirect("AppelOffre.aspx?id=" + IdPlanning);
        }
    }
}