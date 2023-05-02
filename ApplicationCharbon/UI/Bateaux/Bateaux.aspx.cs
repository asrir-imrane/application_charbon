using ApplicationCharbon.Models;
using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI.Bateaux
{
    public partial class Bateaux : System.Web.UI.Page
    {


        protected void AddButton_Bateau_Click(object sender, EventArgs e)
        {
            // Récupérer les valeurs des champs du formulaire
            string IdContratAdd = id_contratAdd1.Value;
            int Idct = int.Parse(IdContratAdd);

            string nomBateau = nom_bateau.Value;

            string Tonnage = tonnage.Value;
            float Tng = float.Parse(Tonnage);



            string selectedValueOg = nom_origineListe.SelectedValue;
            int IdOg = int.Parse(selectedValueOg);

            string vlrCalorifique = valeur_calorifique.Value;
            decimal VCALORIFIQUE = decimal.Parse(vlrCalorifique);


            string CT = cout.Value;
            decimal Cout = decimal.Parse(CT);

            string fraisDouane = frais_douane.Value;
            decimal Fd = decimal.Parse(fraisDouane);

            string decharg = decharge.Value;
            float dg = float.Parse(decharg);

            string prixRendu = prix_rendu.Value;
            decimal Pr = decimal.Parse(prixRendu);

            string Assrc = assurance.Value;
            float Ac = float.Parse(Assrc);

            string eBT = etatBateau.Value;

            // Créer un nouvel objet AO avec les valeurs de champ de formulaire
            Bateau newBT = new Bateau
            {
                id_contrat = Idct,
                id_origine = IdOg,
                nom_bateau = nomBateau,
                tonnage = Tng,
                valeur_calorifique = VCALORIFIQUE,
                cout = Cout,
                frais_douane = Fd,
                decharge = dg,
                prix_rendu = Pr,
                assurance = Ac,
                etat = eBT
            };


            // Ajouter le nouvelle AO à la base de données
            using (var db = new CharbonContext())
            {
                db.Bateau.Add(newBT);
                db.SaveChanges();
            }

            // Rediriger l'utilisateur vers la même page
            Response.Redirect(Request.RawUrl);
        }





    }
}

