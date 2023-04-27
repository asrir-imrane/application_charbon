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
    public partial class updateStock : System.Web.UI.Page
    {
        protected void EditButton_Stock_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            int idStock = Int32.Parse(Request.Form["id_stock"]);
            

            string Consommation = consommation.Value;
            decimal CS = decimal.Parse(Consommation);

            string Livraison = livraison.Value;
            float Lv = float.Parse(Livraison);

            string Decharge = decharge.Value;
            float DG = float.Parse(Decharge);

            string Autonomie = autonomie.Value;
            float Autmie = float.Parse(Autonomie);
            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Stock existingStock = db.Stock.Find(idStock);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingStock.consommation = CS;
                existingStock.livraison = Lv;
                existingStock.decharge = DG;
                existingStock.autonomie = Autmie;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingStock).State = EntityState.Modified;
                db.SaveChanges();
            }

            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#CS");
            string IdBateau = Request.QueryString["id"];
            Response.Redirect("stck.aspx?id=" + IdBateau);
        }
    }
}