using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class Contract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {






            //if (!IsPostBack)
            //{
            //    var service1 = new CharbonAccessService();
            //    var va1 = service1.GetMyDataFournisseur();
            //    ddlListe.DataSource = va1;
            //    ddlListe.DataTextField = "nom_fournisseur"; // la propriété qui contient le nom de fournisseur
            //    ddlListe.DataValueField = "id_fournisseur"; // la propriété qui contient l'identifiant de fournisseur
            //    ddlListe.DataBind();
            //}

        }

        protected void AddButton_Contrat_Click(object sender, EventArgs e)
        {
            //var context = new CharbonContext();

            //// string id_station = Request.QueryString["id"];
            //// Récupérer les valeurs des champs du formulaire
            //string IdAppOffre = id_appOffreAdd.Value;
            //int IdAo = int.Parse(IdAppOffre);

            //string nomContrat = nom_contrat.Value;
            //string typeContrat = typeC.Value;

            //string selectedValue = ddlListe.SelectedValue; //nom_Fournisseur
            //string IdFournisseur = ddlListe.DataValueField;
            //int IdFr = int.Parse(IdFournisseur);

            //string nbrCargaisons = nbr_cargaisons.Value;
            //int nbrCg = int.Parse(nbrCargaisons);

            //string quantiteTotal = quantite_total.Value;
            //decimal qtTotal = decimal.Parse(quantiteTotal);


            //DateTime dateCreation = DateTime.Parse(date_creation.Value);
            //DateTime dateDebut = DateTime.Parse(date_debut.Value);
            //DateTime dateFin = DateTime.Parse(date_fin.Value);

            //string Statut = statut.Value;

            //// Créer un nouvel objet CS avec les valeurs de champ de formulaire
            //Contrat newContrat = new Contrat
            //{
            //    nom_contrat = nomContrat,
            //    id_appOffre = IdAo
            //};

            //Contrat_Details newContratD = new Contrat_Details
            //{
            //    id_contrat = (int)(context.Contrat.FirstOrDefault(c => c.nom_contrat == nomContrat)?.id_contrat),
            //    id_fournisseur = IdAo

            //};

            //// Ajouter le nouveau CS à la base de données
            //using (var db = new CharbonContext())
            //{
            //    //db.Planing_Previsionnel.Add(newPV);
            //    //db.SaveChanges();

            //}
            ///* Page.ClientScript.RegisterStartupScript(this.GetType(), "showMessage", "<script>$('#message').show();</script>");
            // Response.Redirect("index.aspx#CS");*/
            //string idAppOffre = Request.QueryString["id"];
            //Response.Redirect("PlanningPrevisionnel.aspx?id=" + idAppOffre);

        }
    }
}