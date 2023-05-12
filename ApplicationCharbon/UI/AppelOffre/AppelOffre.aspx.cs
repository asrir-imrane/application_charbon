using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class AppelOffre : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
        }
        protected void AddButton_AO_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdPlanningAdd = id_planningAdd.Value;
            int IdPg = int.Parse(IdPlanningAdd);

            string nAO = n_appel_offre.Value;
            string Tp = typee.Value;

            string Tonnage = tonnage.Value;
            float Tng = float.Parse(Tonnage);

            string nbrBateaux = nbr_bateaux.Value;
            int Nbateau = int.Parse(nbrBateaux);

            DateTime dateEmission = DateTime.Parse(date_Emission.Value);
            DateTime dateLivraison = DateTime.Parse(date_livraison.Value);
            DateTime dateCreation = DateTime.Parse(date_creation.Value);

            string Observation = observation.Value;
            string Statut = statut.Value;


            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Appel_Offre newAO = new Appel_Offre
            {
                n_appel_offre = nAO,
                id_planning = IdPg,
                tonnage = Tng,
                date_Emission = dateEmission,
                date_livraison = dateLivraison,
                date_creation = dateCreation,
                nbr_bateaux = Nbateau,
                observation = Observation,
                type = Tp,
                statut = Statut
            };


            // Ajouter le nouvelle AO à la base de données
            using (var db = new CharbonContext())
            {
                db.Appel_Offre.Add(newAO);
                db.SaveChanges();
            }







            /* Page.ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "<script>$('#message').show();</script>");
             Response.Redirect("index.aspx#CS");*/

            Response.Redirect("AppelOffre.aspx");

        }
    }
}