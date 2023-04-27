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
    public partial class deleteType : System.Web.UI.Page
    {
        protected void DeleteButton_Type_Click(object sender, EventArgs e)
        {
            string id = id_type.Value;
            int num = int.Parse(id);

            delete Delete = new delete();
            Delete.SupprimerType(num);

            // Rediriger vers la page d'index après la suppression du type
            Response.Redirect("index.aspx#typee");

        }
    }
}