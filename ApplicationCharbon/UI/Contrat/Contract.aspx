﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contract.aspx.cs" Inherits="ApplicationCharbon.UI.Contract" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Stock</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" integrity="sha384-dtV5C5+mfIjJ8OvH0d7bzDJwIphlOaEJj/vxHgyV1pG9tX5Wj8oL5d5I7YoDQyCY" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../../Assets/Scripts/script.js"></script>
    <script src="../../Assets/Scripts/nav.js"></script>

    <!-- BOX ICONS CSS-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Top bar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-white">
                <div class="container-fluid">
                    <!-- Website logo -->
                    <img src="../../Assets/IMG/logo.png" alt="ONE" class="logo" />
                    <!-- Toggler button for mobile view -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Navigation links -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <div class="user-profile">
                                    <%@ Import Namespace="ApplicationCharbon.Models" %>
                                    <% if (Session["UserLogin"] != null)
                                        { %>
                                    <div class="user-initial"><%= Session["UserLogin"].ToString().Substring(0, 1).ToUpper() %></div>
                                    <div class="user-info">
                                        <p><%= Session["UserLogin"] %></p>
                                        <p>
                                            <% foreach (string permission in ((string)Session["userPermissions"]).Split(new string[] { ", " }, StringSplitOptions.RemoveEmptyEntries))
                                                { %>
                                            <%= permission %><br />
                                            <% } %>
                                        </p>
                                    </div>
                                    <% } %>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>


            <div class="col-md-3 col-lg-2">
                <div class="sidebar">
                    <div class="list-group">
                        <a href="../index.aspx" class="list-group-item list-group-item-action ">
                            <i class="bi bi-speedometer2 me-2"></i>Accueil
                        </a>
                        <a href="../Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <a href="../PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
                        </a>
                        <a href="../AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="Contrat/Contrat.aspx" id="Contrat" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>


            <!-- Main content -->
            <div class="col-md-9 col-lg-10 main-content">
                <div class="jumbotron jumbotron-fluid">
                    <div class="container">
                        <h1 class="display-4">Stock</h1>
                    </div>
                </div>


                <div class="container-fluid p-3">
                    <div class="container-fluid p-3">
                        <div class="table-responsive">
                            <div class="d-flex justify-content-between align-items-center form-group">
                                <div class="d-flex align-items-center">
                                    <div>
                                        <button type="button" class="btn btn-success btn-lg rounded-pill shadow" data-bs-toggle="modal" data-bs-target="#ajouterContratModal">
                                            <i class="bi bi-person-plus-fill me-2"></i>
                                            <span class="d-none d-md-inline-block">Ajouter une contrat</span>
                                        </button>
                                    </div>



                                    <div class="ms-3 search-form">
                                        <form class="d-flex">
                                            <input class="form-control rounded-pill me-2" type="search" placeholder="Rechercher ..." aria-label="Search" />

                                        </form>
                                    </div>

                                </div>
                            </div>

                            <table class="table table-hover table-bordered">
                                <thead class="bg-dark text-white">
                                    <tr>
                                        <th class="text-center">Nom Contrat</th>
                                        <th class="text-center">Type</th>
                                        <th class="text-center">Nom Fournisseur</th>
                                        <th class="text-center">nombre de Cargaisons</th>
                                        <th class="text-center">Quantite Total</th>
                                        <th class="text-center">Date Creation</th>
                                        <th class="text-center">Date Debut</th>
                                        <th class="text-center">Date Fin</th>
                                        <th class="text-center">Statut</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                                    <% var service = new CharbonAccessService();%>

                                    <% var va = service.GetMyDataContrat();
                                        foreach (var tp in va)
                                        { %>
                                    <tr>

                                        <td><%= tp.nom_contrat %></td>
                                        <td><%= tp.type %></td>
                                        <td><%= tp.nom_fournisseur %></td>
                                        <td><%= tp.nbr_cargaisons %></td>
                                        <td><%= tp.quantite_total %></td>
                                        <td><%= tp.date_creation %></td>
                                        <td><%= tp.date_debut %></td>
                                        <td><%= tp.date_fin %></td>
                                        <td><%= tp.statut %></td>

                                        <td class="text-center">
                                            <div class="btn-group">
                                                <button class="btn btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="bi bi-three-dots-vertical"></i>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item edit-stock" href="#" data-idstock="<%= tp.id_contrat%>" data-nomcontrat="<%= tp.nom_contrat %>" data-type="<%= tp.type %>" data-nomfournisseur="<%= tp.nom_fournisseur %>" data-nbrcargaisons="<%= tp.nbr_cargaisons %>" data-quantitetotal="<%= tp.quantite_total %>" data-datecreation="<%= tp.date_creation %>" data-datedebut="<%= tp.date_debut %>" data-datefin="<%= tp.date_fin %>" data-statut="<%= tp.statut %>">
                                                            <i class="bi bi-pen me-2"></i>Modifier Contrat
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <hr class="dropdown-divider" />
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item delete-stock" href="#" data-idstock="<%= tp.id_contrat %>">
                                                            <i class="bi bi-trash me-2"></i>Supprimer Contrat
                                                        </a>
                                                    </li>
                                                </ul>
                                            </div>
                                        </td>
                                    </tr>
                                    <% } %>
                                </tbody>

                            </table>
                        </div>
                    </div>

                    <!-- Ajouter Contract Modal HTML -->
                    <div class="modal fade" id="ajouterContratModal" tabindex="-1" aria-labelledby="ajouterStockModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form runat="server">
                                    <div class="modal-header">
                                        <h2 class="modal-title" id="ajouterStockModalLabel">Ajouter Stock</h2>
                                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label>id_appOffre</label>
                                            <input type="text" class="form-control" id="Text1" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>nom_contrat</label>
                                            <input type="text" class="form-control" id="Text2" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>typeC</label>
                                            <input type="text" class="form-control" id="Text3" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>nom_fournisseur</label>
                                            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList>

                                        </div>
                                        <div class="form-group">
                                            <label>nbr_cargaisons</label>
                                            <input type="text" class="form-control" id="Text4" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>quantite_total</label>
                                            <input type="text" class="form-control" id="Text5" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>date_creation</label>
                                            <input type="date" class="form-control" id="date1" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>date_debut</label>
                                            <input type="date" class="form-control" id="date2" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>date_fin</label>
                                            <input type="date" class="form-control" id="date3" runat="server" required="required" />
                                        </div>
                                        <div class="form-group">
                                            <label>statut</label>
                                            <input type="text" class="form-control" id="Text6" runat="server" required="required" />
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button type="submit" Text="Ajouter stock" class="btn btn-success" OnClick="AddButton_Contrat_Click" runat="server"></asp:Button>
                                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Edit Appel Offre -->
                    <% Server.Transfer("updateContract.aspx");%>
                </div>
            </div>
        </div>
    </div>
</body>
</html>





