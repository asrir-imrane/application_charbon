<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateType.aspx.cs" Inherits="ApplicationCharbon.UI.updateType" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Modifier Type</title>
</head>
<body>
    <div id="modifierType" class="modal fade">
		<div class="modal-dialog">
			<div class="modal-content">
				<form runat="server">
					<div class="modal-header">						
						<h4 class="modal-title">Modifier Type</h4>
						<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<label>id</label>
							<input type="text" class="form-control" id="id_type" runat="server" required="required"/>
						</div>	
						<div class="form-group">
							<label>type</label>
							<input type="text" class="form-control" id="typeEdit" runat="server" required="required"/>
						</div>				
					</div>
					<div class="modal-footer">
						<input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
						<asp:Button type="submit" Text="Modifier" class="btn btn-primary" OnClick="EditButton_Type_Click" runat="server"></asp:Button>
					</div>
				</form>
			</div>
		</div>
	</div>

	 <!-- Supprimer Type -->
	<% Server.Transfer("deleteType.aspx");%>
</body>
</html>
