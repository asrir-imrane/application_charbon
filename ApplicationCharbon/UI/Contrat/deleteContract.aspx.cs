using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteContract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Contrat_Click(object sender, EventArgs e)
        {
            string IdContrat = Id_ContratSupp.Value;
            int IdCt = int.Parse(IdContrat);

            string IdContratD = Id_ContratDSupp.Value;
            int IdCtD = int.Parse(IdContratD);

            delete Delete = new delete();
            Delete.SupprimerContrat(IdCt, IdCtD);

            // Rediriger vers la page d'index après la suppressionSystem.FormatException : 'Le format de la chaîne d'entrée est incorrect.'
            // Response.Redirect("index.aspx#CS");
            string idAppOffre = Request.QueryString["id"];
            Response.Redirect("Contract.aspx?id=" + idAppOffre);
        }
    }
}