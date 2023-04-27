using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class PlanningPrevisionnel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void AddButton_PV_Click(object sender, EventArgs e)
        {

           // string id_station = Request.QueryString["id"];
            // Récupérer les valeurs des champs du formulaire
            string IdStation = id_stationAdd2.Value;
            int IdSt = int.Parse(IdStation);

            string ann = annee.Value;

            // Créer un nouvel objet CS avec les valeurs de champ de formulaire
            Planing_Previsionnel newPV = new Planing_Previsionnel
            {
                id_station = IdSt,
                annee = ann
            };

            // Ajouter le nouveau CS à la base de données
            using (var db = new CharbonContext())
            {
                db.Planing_Previsionnel.Add(newPV);
                db.SaveChanges();

            }
            
            Response.Redirect("PlanningPrevisionnel/PlanningPrevisionnel.aspx");

        }

    }
}