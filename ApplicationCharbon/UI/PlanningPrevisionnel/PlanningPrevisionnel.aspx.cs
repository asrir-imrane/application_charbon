using ApplicationCharbon.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OfficeOpenXml;

using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

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

            // Get the uploaded Excel file
            HttpPostedFile uploadedFile = Request.Files["excelFile"];

            if (uploadedFile != null && uploadedFile.ContentLength > 0)
            {
                // Save the file to a folder
                string fileName = Path.GetFileName(uploadedFile.FileName);
                string filePath = Server.MapPath("~/excelFile/" + fileName);

                uploadedFile.SaveAs(filePath);

                // Open the Excel file using EPPlus
                using (var package = new ExcelPackage(uploadedFile.InputStream))
                {
                    // Get the first worksheet in the file
                    var worksheet = package.Workbook.Worksheets.FirstOrDefault();

                    if (worksheet != null)
                    {
                        // Read the data from the worksheet
                        var startRow = worksheet.Dimension.Start.Row + 1; // Skip the header row
                        var endRow = worksheet.Dimension.End.Row;
                        var data = new List<dynamic>();

                        for (int row = startRow; row <= endRow; row++)
                        {
                            var name = worksheet.Cells[row, 1].Value?.ToString();
                            var age = worksheet.Cells[row, 2].Value is double ? (int)worksheet.Cells[row, 2].Value : 0;

                            if (!string.IsNullOrEmpty(name) && age > 0)
                            {
                                // Add the data to a list
                                data.Add(new { Name = name, Age = age });
                            }
                        }

                        // Use the data as needed
                        foreach (var item in data)
                        {
                            // Do something with the data
                            var name = item.Name;
                            var age = item.Age;
                            // ...
                        }
                    }
                }
            }


            Response.Redirect("PlanningPrevisionnel/PlanningPrevisionnel.aspx");

        }

    }
}