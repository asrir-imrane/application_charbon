<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bateaux.aspx.cs" Inherits="ApplicationCharbon.UI.Bateaux.Bateaux" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Bateau </title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" />
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="../Assets/Scripts/script.js"></script>
    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
</head>
<body>
    <div class="container" style="margin-right: 500px;">
        <div class="table-wrapper" style="width: 1100px;">
            <div class="table-title" style="background-color: #431A65;">
                <div class="row">
                    <div class="col-sm-2">
                        <h2><b>Bateau </b></h2>
                    </div>

                    <!-- Search -->
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="input-search" placeholder="Entrez le terme de recherche" oninput="searchTable()" />
                    </div>

                    <!-- Manage -->
                    <div class="col-sm-6">
                        <a href="#ajouterBateau" class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>Ajouter </span></a>
                    </div>
                </div>
            </div>

            <table class="table table-striped table-hover" id="table">
                <thead>
                    <tr>
                        <!--th>id_appOffre</!--th-->
                        <th>nom_bateau</th>
                        <!-- Contrat -->
                        <th>tonnage</th>
                        <!-- Contrat_Details -->
                        <th>valeur_calorifique</th>
                        <!-- Fournisseur -->
                        <th>cout</th>
                        <!-- Contrat_Details -->
                        <th>frais_douane</th>
                        <!-- Contrat_Details -->
                        <th>decharge</th>
                        <!-- Contrat_Details -->
                        <th>prix_rendu</th>
                        <!-- Contrat_Details -->
                        <th>assurance</th>
                        <!-- Contrat_Details -->
                        <th>etat</th>
                        <th>nom_origine</th>
                        <th>Stock</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                    <% var service = new CharbonAccessService();%>
                    <% string IdContrat = Request.QueryString["id"];%>
                    <% var va = service.GetMyDataBateau(IdContrat);
                        foreach (var tp in va)
                        { %>
                    <tr>
                        <!--td><%--= tp.id_appOffre --%></!--td-->
                        <td><%= tp.nom_bateau %></td>
                        <td><%= tp.tonnage %></td>
                        <td><%= tp.valeur_calorifique %></td>
                        <td><%= tp.cout %></td>
                        <td><%= tp.frais_douane %></td>
                        <td><%= tp.decharge %></td>
                        <td><%= tp.prix_rendu %></td>
                        <td><%= tp.assurance %></td>
                        <td><%= tp.etat %></td>
                        <td><%= tp.nom_origine %></td>
                        <td><a href="stck.aspx?id=<%= tp.id_bateau %>" class="btn btn-sm">
                            <i class="material-icons" data-toggle="tooltip" title="View"
                                style="color: steelblue">visibility</i> <span></span></a>
                        </td>
                        <td style="white-space: nowrap;">
                            <a href="#modifierBateau" class="btn  btn-sm" data-toggle="modal"
                                onclick="remplirFormulaireBateau('<%= tp.nom_bateau %>','<%= tp.tonnage %>','<%= tp.valeur_calorifique %>',
									'<%= tp.cout %>','<%= tp.frais_douane %>','<%= tp.decharge %>','<%= tp.prix_rendu %>',
									'<%= tp.assurance %>','<%= tp.etat %>','<%= tp.id_bateau %>')"
                                style="margin-left: -10px;">
                                <i class="material-icons" data-toggle="tooltip" title="Edit" style="color: #DC9E0D">&#xE254;</i> <span></span></a>
                            <a href="#supprimerBateau" class="btn" data-toggle="modal"
                                onclick="suppressionBateau('<%= tp.id_bateau %>')" style="margin-left: -18px;">
                                <i class="material-icons" style="color: #B62913">&#xE15C;</i> <span></span></a>
                        </td>
                    </tr>
                    <% } %>
                </tbody>
            </table>
        </div>
    </div>

    <!-- script -->

    <!-- Ajouter AppelOffre  -->
    <form runat="server">
        <div id="ajouterBateau" class="modal fade" runat="server">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title">Ajouter Bateau</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="form-group">
                            <label>id_contrat</label>
                            <input type="text" class="form-control" id="id_contratAdd1" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>nom_bateau</label>
                            <input type="text" class="form-control" id="nom_bateau" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>tonnage</label>
                            <input type="text" class="form-control" id="tonnage" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>nom_origine</label>
                            <asp:DropDownList ID="nom_origineListe" runat="server" CssClass="form-control"></asp:DropDownList>

                        </div>
                        <div class="form-group">
                            <label>valeur_calorifique</label>
                            <input type="text" class="form-control" id="valeur_calorifique" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>cout</label>
                            <input type="text" class="form-control" id="cout" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>frais_douane</label>
                            <input type="text" class="form-control" id="frais_douane" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>decharge</label>
                            <input type="text" class="form-control" id="decharge" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>prix_rendu</label>
                            <input type="text" class="form-control" id="prix_rendu" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>assurance</label>
                            <input type="text" class="form-control" id="assurance" runat="server" required="required" />
                        </div>
                        <div class="form-group">
                            <label>etatBateau</label>
                            <input type="text" class="form-control" id="etatBateau" runat="server" required="required" />
                        </div>
                    </div>
                    <div class="modal-footer">
                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Annuler" />
                        <asp:Button type="submit" Text="Ajouter" class="btn btn-primary" OnClick="AddButton_Bateau_Click" runat="server"></asp:Button>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Edit Bateau -->
    <% Server.Transfer("updateBateau.aspx");%>
</body>
</html>
