<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updatePlanningPrevisionnel.aspx.cs" Inherits="ApplicationCharbon.UI.updatePlanningPrevisionnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Modifier PV</title>
</head>
<body>
    <div id="modifierPV" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form runat="server">
					<div class="modal-header">						
						<h4 class="modal-title">Modifier PV</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
							 <div class="form-group">
                            <!--label>id_planning</!--label-->
                            <input type="text" class="form-control" id="id_planningED" runat="server" required="required" style="display: none;" />
                        </div>	
						
						 <div class="form-group">
                            <label>nom_station</label>
                            <input type="text" class="form-control" id="nom_stationED" runat="server" required="required"/>
                        </div>	
						
						<div class="form-group">
                            <label>annee</label>
                            <input type="text" class="form-control" id="anneeED" runat="server" required="required"/>
                        </div>		
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
						<asp:Button type="submit" Text="Modifier" class="btn btn-primary" OnClick="EditButton_PV_Click" runat="server"></asp:Button>
					</div>
				</form>
			</div>
		</div>
	</div>

		 <!-- Supprimer PV -->
	<% Server.Transfer("deletePlanningPrevisionnel.aspx");%>
</body>
</html>
