<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateCentraleStock.aspx.cs" Inherits="ApplicationCharbon.UI.updateCentraleStock" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../Assets/CSS/index.css" />
    <link rel="stylesheet" href="../Assets/CSS/StyleSheet.css" />
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>
    <script src="../Assets/Scripts/script.js"></script>

</head>
<body>

    <div id="modifierCS" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form id="editCSForm" runat="server">

                    <div class="modal-header">
                        <h2 class="modal-title">Modifier Centrale Stock</h2>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <div class="modal-body">
                        <div class="form-group">
                            <label for="Id_SCentrale" class="form-label">ID Centrale Stock :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="Id_SCentrale" name="Id_SCentrale" readonly="readonly" value="" />
                            </div>
                        </div>

                        <div class="mb-3">
                            <label for="stock_initial" class="form-label">Stock initial :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="stock_initial" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="stock_final" class="form-label">Stock Final :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="stock_final" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="stock_ajustement" class="form-label">Stock Ajustement :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="stock_ajustement" runat="server" required="required" />
                            </div>
                        </div>
                        <div class="mb-3">
                            <label for="stock_date" class="form-label">Stock Date :</label>
                            <div class="input-group">
                                <input type="text" class="form-control" id="stock_date" runat="server" required="required" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">

                        <asp:Button ID="btnModifier" runat="server" Text="Modifier Centrale Stock" CssClass="btn btn-warning" OnClick="EditButton_CS_Click" />
                        <asp:Button runat="server"  class="btn btn-default" data-dismiss="modal" value="Annuler"/>
                    </div>
                </form>
            </div>
        </div>
    </div>


    <!-- Supprimer CS -->
    <% Server.Transfer("deleteCentraleStock.aspx");%>
</body>
</html>
