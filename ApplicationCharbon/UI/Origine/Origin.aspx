<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Origin.aspx.cs" Inherits="ApplicationCharbon.UI.Origin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Origine Bateau </title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
</head>
<body>

    <div class="container">
        <div class="table-wrapper">
            <div class="table-title" style="background-color: #431A65;">
                <div class="row">
                    <div class="col-sm-2">
                        <h2><b>Origine Bateau </b></h2>
                    </div>

                    <!-- Search -->
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="input-search" placeholder="Entrez le terme de recherche" oninput="searchTable()" />
                    </div>

                    <!-- Manage -->
                    <div class="col-sm-6">
                        <a href="#ajouterOrigine" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Ajouter Origine </span></a>
                    </div>
                </div>
            </div>

            <table class="table table-striped table-hover" id="table">
                <thead>
                    <tr>
                        <th>id_origine</th>
                        <th>nom_origine</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                    <% var service = new CharbonAccessService();%>
                    <% var va = service.GetMyDataOrigine();
                        foreach (var tp in va)
                        { %>
                    <tr>
                        <td><%= tp.id_origine %></td>
                        <td><span><%= tp.nom_origine %> </span></td>

                        <td style="white-space: nowrap;">
                            <a href="#modifierOrigine" class="btn btn-sm" data-toggle="modal"
                                onclick="remplirFormulaireOrigine('<%= tp.id_origine %>','<%= tp.nom_origine %>')"
                                style="margin-left: -10px;">
                                <i class="material-icons" data-toggle="tooltip" title="Edit" style="color: #DC9E0D">&#xE254;</i> <span></span></a>
                            <a href="#supprimerOrigine" class="btn" data-toggle="modal"
                                onclick="suppressionOrigine('<%= tp.id_origine %>')" style="margin-left: -18px;">
                                <i class="material-icons" style="color: #B62913">&#xE15C;</i> <span></span></a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- script -->
    <script src="../Assets/Scripts/script.js"></script>

    <!-- Ajouter Fournisseur -->
    <form runat="server">
        <div id="ajouterOrigine" class="modal fade" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Ajouter Origine</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>nom_origine</label>
                            <input type="text" class="form-control" id="nom_origine" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Ajouter" class="btn btn-primary" OnClick="AddButton_Origine_Click" runat="server"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Edit Fournisseur -->
    <% Server.Transfer("updateOrigine.aspx");%>
</body>
</html>
