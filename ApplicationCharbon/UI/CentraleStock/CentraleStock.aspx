<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CentraleStock.aspx.cs" Inherits="ApplicationCharbon.UI.CentraleStock" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Centrale Stock</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous" />
    <!-- Bootstrap Icons CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" integrity="sha384-dtV5C5+mfIjJ8OvH0d7bzDJwIphlOaEJj/vxHgyV1pG9tX5Wj8oL5d5I7YoDQyCY" crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css" />
    <link rel="stylesheet" href="../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../Assets/CSS/index.css" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../Assets/Scripts/script.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>

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
                    <a class="navbar-brand" href="#">Application Charbon</a>
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
                        <a href="index.aspx" class="list-group-item list-group-item-action ">
                            <i class="bi bi-speedometer2 me-2"></i>Accueil
                        </a>
                        <a href="Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <a href="PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
                        </a>
                        <a href="AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="Contrat/Contrat.aspx" id="Contrat" class="list-group-item list-group-item-action" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>

            <!-- Main content -->
            <div class="col-md-9 col-lg-10 main-content">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb bg-transparent">
                        <li class="breadcrumb-item"><a href="stations.aspx">Station</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Centrale Stock</li>
                    </ol>
                </nav>

                <div class="jumbotron jumbotron-fluid bg-light">
                    <div class="container">
                        <h1 class="display-4">Centrale Stock</h1>
                    </div>
                </div>


                <div class="container-fluid p-3">
                    <div class="table-responsive">
                        <div class="d-flex justify-content-between align-items-center mb-3 ">
                            <div class="d-flex align-items-center">
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

                                    <th class="text-center">Id</th>
                                    <th class="text-center">Stock initial</th>
                                    <th class="text-center">Stock final</th>
                                    <th class="text-center">Différence de stock</th>
                                    <th class="text-center">Ajustement des stocks</th>
                                    <th class="text-center">Date de stock</th>
                                    <th class="text-center">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%@ Import Namespace="ApplicationCharbon.Services" %>
                                <% var service = new CharbonAccessService();%>
                               
                                <% var va = service.GetMyDataCS();
                                    foreach (var tp in va)
                                    { %>
                                <tr>
                                    <td><%= tp.Id_SCentrale %></td>
                                    <td><%= tp.stock_initial %></td>
                                    <td><%= tp.stock_final %></td>
                                    <td><%= tp.stock_difference %></td>
                                    <td><%= tp.stock_ajustement %></td>
                                    <td><%= tp.stock_date %></td>
                                    <td class="text-center">
                                        <div class="btn-group">
                                            <button class="btn btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class="bi bi-three-dots-vertical"></i>
                                            </button>
                                            <ul class="dropdown-menu">

                                                <li>
                                                    <a class="dropdown-item edit-CS" href="#" data-idscentrale="<%= tp.Id_SCentrale %>" data-stockinitial="<%= tp.stock_initial %>" data-stockfinal="<%= tp.stock_final %>" data-stockajustement="<%= tp.stock_ajustement %>" data-stockdate="<%= tp.stock_date %>">
                                                        <i class="bi bi-pen me-2"></i>Modifier Fournisseur
                                                    </a>
                                                </li>
                                                <li>
                                                    <hr class="dropdown-divider" />
                                                </li>
                                                <li>
                                                    <a class="dropdown-item delete-CS" href="#" data-fournisseurid="<%= tp.Id_SCentrale %>">
                                                        <i class="bi bi-trash me-2"></i>Supprimer Fournisseur
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

            </div>
        </div>
    </div>
    <!-- Edit Fournisseur -->
    <% Server.Transfer("updateCentraleStock.aspx");%>
</body>
</html>





