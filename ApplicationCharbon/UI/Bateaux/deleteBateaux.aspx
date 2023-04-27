<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="deleteBateaux.aspx.cs" Inherits="ApplicationCharbon.UI.Bateaux.deleteBateaux" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Supprimer Bateau</title>
</head>
<body>
    <div id="supprimerBateau" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Supprimer Bateau</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="hidden" class="form-control" id="Id_bateauSupp" runat="server" required="required" />
                        </div>
                        <p><strong>Voulez-vous vraiment supprimer cet enregistrement ?</strong></p>

                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Supprimer" class="btn btn-danger" OnClick="DeleteButton_Bateau_Click" runat="server"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

