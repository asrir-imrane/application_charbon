using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class updateAppelOffre : System.Web.UI.Page
    {
        protected void EditButton_AO_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdAppOED = id_appOffreED.Value;
            int IdAO = int.Parse(IdAppOED);

            string NappelOffreED = n_appel_offreED.Value;
            string typED = typeED.Value;
            string Tonnage = tonnageED.Value;
            float Tng = float.Parse(Tonnage);

            string nbrBateaux = nbr_bateauxED.Value;
            int Nbateau = int.Parse(nbrBateaux);

            DateTime dateCreation = DateTime.Parse(date_creationED.Value);
            DateTime dateEmission = DateTime.Parse(date_EmissionED.Value);
            DateTime dateLivraison = DateTime.Parse(date_livraisonED.Value);
           

            string Observation = observationED.Value;
            string Statut = statutED.Value;

   

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Appel_Offre existingAO = db.Appel_Offre.Find(IdAO);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingAO.n_appel_offre = NappelOffreED;
                existingAO.type = typED;
                existingAO.tonnage = Tng;
                existingAO.nbr_bateaux = Nbateau;
                existingAO.date_creation = dateCreation;
                existingAO.date_Emission = dateEmission;
                existingAO.date_livraison = dateLivraison;
                existingAO.observation = Observation;
                existingAO.statut = Statut;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingAO).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#CS");
            string IdPlanning = Request.QueryString["id"];
            Response.Redirect("AppelOffre.aspx?id=" + IdPlanning);
        }
    }
}