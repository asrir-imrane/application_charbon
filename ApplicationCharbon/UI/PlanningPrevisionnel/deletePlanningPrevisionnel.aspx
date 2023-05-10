﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deletePlanningPrevisionnel.aspx.cs" Inherits="ApplicationCharbon.UI.deletePlanningPrevisionnel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Supprimer PV </title>
</head>
<body>
  <div id="supprimerPV" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form runat="server">
					<div class="modal-header">						
						<h4 class="modal-title">Supprimer PV</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<input type="hidden" class="form-control" id="Id_PlanSupp" runat="server" required="required"/>
						</div>	
						                        <p style="display: block;"><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>
		
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler"/>
						<asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_PV_Click" runat="server"></asp:Button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
