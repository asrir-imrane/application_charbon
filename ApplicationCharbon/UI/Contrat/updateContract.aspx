<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateContract.aspx.cs" Inherits="ApplicationCharbon.UI.updateContract" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Contrat</title>
    <script src="../Assets/Scripts/script.js"></script>
</head>
<body>
    <div id="modifierContrat" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Contrat</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="idContrat_contratED11" runat="server" required="required" style="display: none;" />
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" id="idContratDetails_contratED11" runat="server" required="required" style="display: none;" />
                        </div>
                        <div class="form-group">
                            <label>nom_contrat</label>
                            <input type="text" class="form-control" id="nom_contratED11" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>nomFournisseur_contrat</label>
                            <asp:DropDownList ID="ddlListeEdit" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>nbrCg_contrat</label>
                            <input type="text" class="form-control" id="nbrCg_contratED11" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>quantiteTotal_contrat</label>
                            <input type="text" class="form-control" id="quantite_contratED11" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>statut_contrat</label>
                            <input type="text" class="form-control" id="statut_contratED11" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Modifier" class="btn btn-primary" OnClick="EditButton_Contrat_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Supprimer PV -->
    <% Server.Transfer("deleteContract.aspx");%>
</body>
</html>
