<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="updateBateaux.aspx.cs" Inherits="ApplicationCharbon.UI.Bateaux.updateBateaux" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Modifier Bateau</title>
    <script>
        $(".edit-bateau").click(function (e) {
            e.preventDefault();

            var IdBateau = $(this).data('bateauid');

            $('#id_bateauED').val(IdBateau);
            if ($(this).hasClass("edit-bateau")) {
                $("#modifierBateau").modal("show");
            }
        });
        $(".delete-bateau").click(function (e) {
            e.preventDefault();

            var IdBateau = $(this).data('bateauid');

            $('#id_bateau').val(IdBateau);

            if ($(this).hasClass("delete-bateau")) {
                $("#supprimerBateau").modal("show");
            }
        });

    </script>

</head>
<body>
    <div id="modifierBateau" class="modal fade">
        <div class="modal-dialog">
            <div class="modal-content">
                <form runat="server">
                    <div class="modal-header">
                        <h4 class="modal-title">Modifier Bateau</h4>
                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <input type="text" class="form-control" id="id_bateauED" runat="server" required="required" style="display: none;" />
                        </div>
                        <div class="form-group">
                            <label>Nom Bateau</label>
                            <input type="text" class="form-control" id="nom_bateauED" runat="server" required="required" />
                        </div>


                        <div class="form-group">
                            <label>Tonnage</label>
                            <div class="form-group">
                                <label for="tonnageED">Tonnage</label>
                                <input type="text" class="form-control" id="tonnageED" name="tonnageED" runat="server" required="required" pattern="\d+" title="Entrer le tonnage " />
                            </div>
                        </div>
                        <div class="form-group">
                            <label>nom Origine</label>
                            <asp:DropDownList ID="origineEdit" runat="server" CssClass="form-control"></asp:DropDownList>
                        </div>
                        <div class="form-group">
                            <label>valeur_calorifique</label>
                            <input type="text" class="form-control" id="valeur_calorifiqueED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>cout</label>
                            <input type="text" class="form-control" id="coutED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>frais_douane</label>
                            <input type="text" class="form-control" id="frais_douaneED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>decharge</label>
                            <input type="text" class="form-control" id="dechargeED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>prix_rendu</label>
                            <input type="text" class="form-control" id="prix_renduED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>assurance</label>
                            <input type="text" class="form-control" id="assuranceED" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>etat</label>
                            <input type="text" class="form-control" id="etatED" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <asp:Button type="submit" Text="Modifier Station" class="btn btn-success" OnClick="EditButton_Bateau_Click" runat="server"></asp:Button>
                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Supprimer Bateau -->
    <% Server.Transfer("deleteBateaux.aspx");%>
</body>
</html>
