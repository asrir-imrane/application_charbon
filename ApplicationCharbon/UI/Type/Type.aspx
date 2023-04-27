<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Type.aspx.cs" Inherits="ApplicationCharbon.UI.Type" %>

<!DOCTYPE html>
<html lang="en">
 <head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Type</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../../Assets/CSS/Style.css">
  </head>
  <body>
    <div class="container" >
        <div class="table-wrapper">
            <div class="table-title" style="background-color: #431A65;">
                <div class="row" >
                    <div class="col-sm-2">
						<h2> <b>Types</b></h2>
					</div>

					 <!-- Search --> 
							<div class="col-sm-4">
						    <input type="text" class="form-control" id="input-search" placeholder="Entrez le terme de recherche" oninput="searchTable()">
							</div> 

					 <!-- Manage -->
					<div class="col-sm-6">	
						<a href="#supprimerType" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span></span></a>
						<a href="#modifierType" class="btn btn-warning" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i> <span></span></a>
						<a href="#ajouterType" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span></span></a>	
					</div>
				</div>
            </div>

            <table class="table table-striped table-hover" id="table">
                <thead>
                    <tr>
						<th>id_type</th>
                        <th>type</th>
                    </tr>
                </thead>
                <tbody >
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                            <% var service = new CharbonAccessService();%>
                            <% var va = service.GetMyData();
                                foreach (var tp in va)
                                { %>
                            <tr>
                                <td><%= tp.id_type %></td>
                                <td><%= tp.type %></td>
                            </tr>
                            <% } %>
                </tbody>
            </table>
        </div>
    </div>

	<!-- script -->
	<script src="../../Assets/Scripts/script.js"></script>
	  
	<!-- Ajouter type-->
	<form runat="server">		  	
	<div id="ajouterType" class="modal fade" runat="server">
		<div class="modal-dialog">
			<div class="modal-content">
					<div class="modal-header">						
						<h4 class="modal-title">Ajouter un type</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">					
						 <div class="form-group">
                            <label>type</label>
                            <input type="text" class="form-control" id="type" runat="server" required="required"/>
                        </div>		
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler">
						<asp:Button type="submit" Text="Ajouter" class="btn btn-primary" OnClick="AddButton_Type_Click" runat="server"></asp:Button>
					</div>
			</div>
		</div>
	</div>
	</form>

	<!-- Modifer Type -->
    <% Server.Transfer("updateType.aspx");%>   
</body>
</html>