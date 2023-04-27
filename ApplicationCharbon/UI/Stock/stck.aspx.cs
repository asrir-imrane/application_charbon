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
    public partial class stck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string IdBateau = Request.QueryString["id"];
            int id;


            if (int.TryParse(IdBateau, out id) && id > 0)
            {
                // Vérifiez que l'identifiant de la ligne est valide et effectuez toutes les opérations nécessaires
                id_bateau.Text = IdBateau;
            }
            else
            {
                Response.Redirect("erreur.aspx");
                // Response.Redirect("index.aspx");
            }
        }

        protected void AddButton_Stock_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string idBateauAdd = id_bateau.Text;
            int IdBt = int.Parse(idBateauAdd);

            DateTime dateStock = DateTime.Parse(date.Text);

            string consommationSock = consommation.Text;
            decimal CS = decimal.Parse(consommationSock);

            string livraisonStock = livraison.Text;
            float LS = float.Parse(livraisonStock);

            string dechargeStock = decharge.Text;
            float DG = float.Parse(dechargeStock);

            string autonomieStock = autonomie.Text;
            float Autonomie = float.Parse(autonomieStock);

            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Stock newStock = new Stock
            {
                id_bateau = IdBt,
                date = dateStock,
                consommation = CS,
                livraison = LS,
                decharge = DG,
                autonomie = Autonomie
            };

            // Ajouter le nouvelle AO à la base de données
            try
            {
                // Ajouter le nouvelle AO à la base de données
                using (var db = new CharbonContext())
                {
                    db.Stock.Add(newStock);
                    db.SaveChanges();
                }


            }
            catch (DbEntityValidationException ex)
            {
                foreach (var validationErrors in ex.EntityValidationErrors)
                {
                    foreach (var validationError in validationErrors.ValidationErrors)
                    {
                        System.Diagnostics.Debug.WriteLine("Property: {0} Error: {1}", validationError.PropertyName, validationError.ErrorMessage);
                    }
                }
            }



            /* Page.ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "<script>$('#message').show();</script>");
             Response.Redirect("index.aspx#CS");*/
            string IdBateau = Request.QueryString["id"];
            Response.Redirect("stck.aspx?id=" + IdBateau);

        }
    }
}