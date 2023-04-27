<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteType.aspx.cs" Inherits="ApplicationCharbon.UI.deleteType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title> Supprimer Type </title>
</head>
<body>
   <div id="supprimerType" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form runat="server">
					<div class="modal-header">						
						<h4 class="modal-title">Supprimer Type</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>id</label>
							<input type="text" class="form-control" id="id_type" runat="server" required="required"/>
						</div>	
						<p>Voulez-vous vraiment supprimer ce enregistrement ?</p>
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler"/>
						<asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_Type_Click" runat="server"></asp:Button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
