<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateOrigine.aspx.cs" Inherits="ApplicationCharbon.UI.updateOrigine" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Origine</title>

</head>
<body>
    <div id="modifierOrigine" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Origine</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="id_origineED" runat="server" required="required" style="display: none;" />
                        </div>

                        <div class="form-group">
                            <label>nom_origine</label>
                            <input type="text" class="form-control" id="nom_origineED" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Modifier" class="btn btn-primary" OnClick="EditButton_Origine_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- Supprimer Station -->
    <% Server.Transfer("deleteOrigine.aspx");%>
</body>
</html>
