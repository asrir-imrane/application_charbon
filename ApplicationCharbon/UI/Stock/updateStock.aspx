<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateStock.aspx.cs" Inherits="ApplicationCharbon.UI.updateStock" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <script src="../../Assets/Scripts/script.js"></script>

</head>
<body>

    <div id="modifierStock" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="editStockForm" runat="server">

                    <div class="modal-header">
                        <h2 class="modal-title">Modifier Stock</h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="id stock" class="form-label">ID du Stock :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="id_stock" name="id_stock" readonly="readonly" value="" />
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="Consommation" class="form-label">Consommation :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="consommation" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Livraison" class="form-label">Livraison :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="livraison" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Decharge" class="form-label">Decharge :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="decharge" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="Autonomie" class="form-label">Autonomie :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="autonomie" runat="server" required="required" />
                            </div>
                        </div>
                    </div>

                    <div class="modal-footer">

                        <asp:Button ID="btnModifier" runat="server" Text="Modifier stock" CssClass="btn btn-warning" OnClick="EditButton_Stock_Click" />
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Supprimer Stock -->
    <% Server.Transfer("deleteStock.aspx");%>
</body>
</html>

