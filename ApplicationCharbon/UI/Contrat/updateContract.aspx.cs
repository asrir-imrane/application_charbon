using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class updateContract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var service2 = new CharbonAccessService();
                var va2 = service2.GetMyDataFournisseur();
                ddlListeEdit.DataSource = va2;
                ddlListeEdit.DataTextField = "nom_fournisseur"; // la propriété qui contient le nom de fournisseur
                ddlListeEdit.DataValueField = "id_fournisseur"; // la propriété qui contient l'identifiant de fournisseur
                ddlListeEdit.DataBind();
            }
        }



        protected void EditButton_Contrat_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdContratED = idContrat_contratED11.Value;
            int IdCt = int.Parse(IdContratED);

            string IdcontDetailsED = idContratDetails_contratED11.Value;
            int IdCtDetails = int.Parse(IdcontDetailsED);

            string nomContratED = nom_contratED11.Value;
            //string typCED = typeCED11.Value;
            //string nomFournisseurED = nomFournisseur_contratED11.Value;
            string selectedValue = ddlListeEdit.SelectedValue;
            int IdFr = int.Parse(selectedValue);

            string nbrCargaisonsED = nbrCg_contratED11.Value;
            int nbrCargaison = int.Parse(nbrCargaisonsED);


            string quantiteTotalED = quantite_contratED11.Value;
            decimal QTotalED = decimal.Parse(quantiteTotalED);

            /* DateTime dateCreationC = DateTime.Parse(date_creationED11.Value);
             DateTime dateDebut = DateTime.Parse(date_debutED11.Value);
             DateTime dateFin = DateTime.Parse(date_finED11.Value);*/

            string Statut = statut_contratED11.Value;



            // Récupérer le CS existant de la base de données
            using (var db = new CharbonContext())
            {
                Contrat existingContrat = db.Contrat.Find(IdCt);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingContrat.nom_contrat = nomContratED;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingContrat).State = EntityState.Modified;



                Contrat_Details existingContratDetails = db.Contrat_Details.Find(IdCtDetails);

                // Mettre à jour les propriétés du CS avec les nouvelles valeurs
                existingContratDetails.id_fournisseur = IdFr;
                existingContratDetails.nbr_cargaisons = nbrCargaison;
                existingContratDetails.quantite_total = QTotalED;
                existingContratDetails.statut = Statut;

                // Enregistrer les modifications dans la base de données
                db.Entry(existingContratDetails).State = EntityState.Modified;

                db.SaveChanges();
            }
            // Rediriger vers la page d'index après une mise à jour réussie du CS
            // Response.Redirect("index.aspx#CS");
            string idAppOffre = Request.QueryString["id"];
            Response.Redirect("Contract.aspx?id=" + idAppOffre);
        }
    }
}