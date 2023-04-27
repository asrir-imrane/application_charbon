<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AppelOffre.aspx.cs" Inherits="ApplicationCharbon.UI.AppelOffre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Appel Offre</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round"/>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="../Assets/CSS/Style.css"/>
</head>
<body>
    <div class="container" style="margin-right: 500px;" >
        <div class="table-wrapper" style="width:1100px;">
            <div class="table-title" style="background-color: #431A65;">
                <div class="row">
                    <div class="col-sm-2">
						<h2> <b> Appel Offre </b></h2>
					</div>

					 <!-- Search --> 
							<div class="col-sm-4">
						    <input type="text" class="form-control" id="input-search" placeholder="Entrez le terme de recherche" oninput="searchTable()"/>
							</div> 

					 <!-- Manage -->
					<div class="col-sm-6">
						<a href="#ajouterAppelOffre" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span> Ajouter </span></a>	
					</div>
				</div>
            </div>

            <table class="table table-striped table-hover" id="table" >
                <thead >
                    <tr>
						<!--th>id_appOffre</!--th-->
						<th>n_appel_offre</th>
						<th>type</th>
                        <th>tonnage</th>	
						<th>nbr_bateaux</th>
						<th>date_creation</th>
						<th>date_Emission</th>
						<th>date_livraison</th>
						<th>observation</th>
						<th>statut</th>
						<th>Contrat</th>
						<th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                            <% var service = new CharbonAccessService();%>
					       
                            <% var va = service.GetMyDataAppelOffre();
                                foreach (var tp in va)
                                { %>
                            <tr>
								<!--td><%--= tp.id_appOffre --%></!--td-->
								<td><%= tp.n_appel_offre %></td>
								<td><%= tp.type %></td>
                                <td><%= tp.tonnage %></td>
								<td><%= tp.nbr_bateaux %></td>
								<td><%= tp.date_creation %></td>
								<td><%= tp.date_Emission %></td>
								<td><%= tp.date_livraison %></td>
								<td><%= tp.observation %></td>
								<td><%= tp.statut %></td>
								<td><a href="Contract.aspx?id=<%= tp.id_appOffre %>" class="btn btn-sm">
                                    <i class="material-icons" data-toggle="tooltip" title="View" 
									style="color:steelblue">visibility</i> <span></span></a>
                                </td>

					

						<td style="white-space: nowrap;">
									<a href="#modifierAO" class="btn  btn-sm" data-toggle="modal"
									onclick="remplirFormulaireAO('<%= tp.id_appOffre %>','<%= tp.n_appel_offre %>','<%= tp.type %>','<%= tp.tonnage %>',
										'<%= tp.nbr_bateaux %>','<%= tp.date_creation %>','<%= tp.date_Emission %>','<%= tp.date_livraison %>','<%= tp.observation %>','<%= tp.statut %>')"
									style="margin-left: -10px;">
									<i class="material-icons" data-toggle="tooltip" title="Edit" style="color:#DC9E0D" >&#xE254;</i> <span></span></a>
									<a href="#supprimerAO" class="btn" data-toggle="modal"
									onclick="suppressionAO('<%= tp.id_appOffre %>')" style="margin-left: -18px;">
									<i class="material-icons" style="color:#B62913">&#xE15C;</i> <span></span></a>
								</td>
                            </tr>
                            <% } %>
                </tbody>
            </table>
        </div>
    </div>

	<!-- script -->
	<script src="../Assets/Scripts/script.js"></script>
	  
	<!-- Ajouter AppelOffre  -->
	<form runat="server">		  	
	<div id="ajouterAppelOffre" class="modal fade" runat="server">
		<div class="modal-dialog">
			<div class="modal-content">
					<div class="modal-header">						
						<h4 class="modal-title">Ajouter Appel Offre</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">	
						 <div class="form-group">
                            <input type="text" class="form-control" id="id_planningAdd" runat="server" required="required" visible="false"/>
                        </div>
						 <div class="form-group">
                            <label>n_appel_offre</label>
                            <input type="text" class="form-control" id="n_appel_offre" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>typee</label>
                            <input type="text" class="form-control" id="typee" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>tonnage</label>
                            <input type="text" class="form-control" id="tonnage" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>nbr_bateaux</label>
                            <input type="text" class="form-control" id="nbr_bateaux" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>date_creation</label>
                            <input type="date" class="form-control" id="date_creation" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>date_Emission</label>
                            <input type="date" class="form-control" id="date_Emission" runat="server" required="required" />
                        </div>	
						 <div class="form-group">
                            <label>date_livraison</label>
                            <input type="date" class="form-control" id="date_livraison" runat="server" required="required" />
                        </div>	
						
						 <div class="form-group">
                            <label>observation</label>
                            <input type="text" class="form-control" id="observation" runat="server" required="required" />
                        </div>
						 <div class="form-group">
                            <label>statut</label>
                            <input type="text" class="form-control" id="statut" runat="server" required="required" />
                        </div>	
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler"/>
						<asp:Button type="submit" Text="Ajouter" class="btn btn-primary" OnClick="AddButton_AO_Click" runat="server"></asp:Button>
					</div>
			</div>
		</div>
	</div>
	</form>

			    <!-- Edit Appel Offre -->
    <% Server.Transfer("updateAppelOffre.aspx");%>  
</body>
</html>
