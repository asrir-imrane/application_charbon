using ApplicationCharbon.Services;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ApplicationCharbon.UI
{
    public partial class deletePlanningPrevisionnel : System.Web.UI.Page
    {
        protected void DeleteButton_PV_Click(object sender, EventArgs e)
        {
            string Id_Plan = Id_PlanSupp.Value;
            int IdPn = int.Parse(Id_Plan);

            delete Delete = new delete();
            Delete.SupprimerPV(IdPn);

            // Rediriger vers la page d'index après la suppression
            // Response.Redirect("index.aspx#CS");
            string id_station = Request.QueryString["id"];
            Response.Redirect("PlanningPrevisionnel.aspx?id=" + id_station);
        }
    }
}