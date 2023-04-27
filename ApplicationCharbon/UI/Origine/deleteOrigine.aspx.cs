﻿using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deleteOrigine : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Origine_Click(object sender, EventArgs e)
        {
            string IdOrigine = id_origineSupp.Value;
            int IdOg = int.Parse(IdOrigine);

            delete Delete = new delete();
            Delete.SupprimerOrigine(IdOg);

            // Rediriger vers la page d'index après la suppression
            Response.Redirect("Origin.aspx");
            // Response.Redirect("index.aspx#station");
        }
    }
}