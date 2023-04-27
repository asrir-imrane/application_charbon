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
    public partial class updatePlanningPrevisionnel : System.Web.UI.Page
    {
        protected void EditButton_PV_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdPlanED = id_planningED.Value;
            int IdPln = int.Parse(IdPlanED);

            string nomStation = nom_stationED.Value;

            string ann = anneeED.Value;

            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Planing_Previsionnel existingPV = db.Planing_Previsionnel.Find(IdPln);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingPV.annee = ann;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingPV).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#CS");
            string id_station = Request.QueryString["id"];
            Response.Redirect("PlanningPrevisionnel.aspx?id=" + id_station);
        }
    }
}