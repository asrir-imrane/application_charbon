<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateAppelOffre.aspx.cs" Inherits="ApplicationCharbon.UI.updateAppelOffre" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modifier AO</title>
</head>
<body>
    <div id="modifierAO" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form runat="server">
					<div class="modal-header">						
						<h4 class="modal-title">Modifier Appel Offre</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
							 <div class="form-group">
                            <input type="text" class="form-control" id="id_appOffreED" runat="server" required="required" style="display: none;"/>
                        </div>	

						<div class="form-group">
                            <label>n_appel_offre</label>
                            <input type="text" class="form-control" id="n_appel_offreED" runat="server" required="required"/>
                        </div>	
						
						 <div class="form-group">
                            <label>type</label>
                            <input type="text" class="form-control" id="typeED" runat="server" required="required"/>
                        </div>	
						
						<div class="form-group">
                            <label>tonnage</label>
                            <input type="text" class="form-control" id="tonnageED" runat="server" required="required"/>
                        </div>		
						<div class="form-group">
                            <label>nbr_bateaux</label>
                            <input type="text" class="form-control" id="nbr_bateauxED" runat="server" required="required"/>
                        </div>	
						<div class="form-group">
                            <label>date_creation</label>
                            <input type="date" class="form-control" id="date_creationED" runat="server" required="required"/>
                        </div>	
						<div class="form-group">
                            <label>date_Emission</label>
                            <input type="date" class="form-control" id="date_EmissionED" runat="server" required="required"/>
                        </div>	
						<div class="form-group">
                            <label>date_livraison</label>
                            <input type="date" class="form-control" id="date_livraisonED" runat="server" required="required"/>
                        </div>	
						<div class="form-group">
                            <label>observation</label>
                            <input type="text" class="form-control" id="observationED" runat="server" required="required"/>
                        </div>	
						<div class="form-group">
                            <label>statut</label>
                            <input type="text" class="form-control" id="statutED" runat="server" required="required"/>
                        </div>	
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
						<asp:Button type="submit" Text="Modifier" class="btn btn-primary" OnClick="EditButton_AO_Click" runat="server"></asp:Button>
					</div>
				</form>
			</div>
		</div>
	</div>

		 <!-- Supprimer PV -->
	<% Server.Transfer("deleteAppelOffre.aspx");%>
</body>
</html>