<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stck.aspx.cs" Inherits="ApplicationCharbon.UI.stck" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

    <link rel="stylesheet" href="../../Assets/CSS/Style.css" />
    <link rel="stylesheet" href="../../Assets/CSS/StyleSheet.css" />
    <link rel="stylesheet" href="../../Assets/CSS/index.css" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../../Assets/Scripts/nav.js"></script>
    <script src="../../Assets/Scripts/script.js"></script>

    <!-- BOX ICONS CSS-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />
    <style>
        /* Global Variables */
        :root {
            --color1: #20bfa9;
            --color2: #f73859;
            --color2Hover: #d83f59;
            --color3: #fff;
        }

        .Container {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 40px auto;
        }



        .Card {
            width: 400px;
            height: 150px;
            border-radius: 6px;
            overflow: hidden;
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-shadow: 0px 2px 6px rgba(0, 0, 0, 0.3);
            transition: height 0.5s ease;
        }

            .Card.open {
                height: 600px;
            }



            .Card::before {
                background-color: #282828;
                width: 100%;
                height: 100px;
                content: '';
                position: absolute;
                z-index: -1;
            }


            .Card::after {
                background-color: var(--color3);
                content: '';
                position: absolute;
                top: 100px;
                z-index: -1;
            }

        .card__title {
            color: var(--color3);
            margin: 20px 0;
        }

        .card__titleSpan {
            color: #4caf4f;
        }

        .card__content {
            background-color: var(--color3);
            width: 350px;
            height: 350px;
            padding: 35px 30px;
            border-radius: inherit;
            box-shadow: rgb(149 157 165 / 30%) 0 5px 10px;
            /* Flex */
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 0;
        }

        .card__parametre {
            background-color: var(--color3);
            width: 350px;
            height: 350px;
            padding: 35px 30px;
            border-radius: inherit;
            box-shadow: rgb(149 157 165 / 30%) 0 5px 10px;
            /* Flex */
            display: flex;
            flex-direction: column;
            align-items: center;
            margin-bottom: 0;
        }


        .card__features {
            /* Flex */
            display: flex;
            flex-direction: column;
            justify-items: center;
            align-items: flex-start;
        }





        .card__feature b::after {
            content: ":";
            margin-left: 25px;
            margin-right: 5px;
        }

        .card__feature {
            color: #333;
            position: relative;
            font-size: 25px;
        }

            .card__feature:not(.card__feature:last-of-type) {
                margin-bottom: 7px;
            }

            .card__feature::before {
                background-color: var(--color2);
                width: 10px;
                height: 10px;
                margin-top: 6px;
                border-radius: 50%;
                content: '';
                position: absolute;
                left: -18px;
            }

        .card__link {
            background-color: var(--color2);
            color: var(--color3);
            width: 180px;
            height: 40px;
            margin-top: 30px;
            text-decoration: none;
            border-radius: 10px;
            /* Flex */
            display: flex;
            justify-content: center;
            align-items: center;
        }

            .card__link:hover {
                background-color: var(--color2Hover);
            }

        .hidden {
            display: none;
        }



        .card__toggle-container {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 10vh;
        }

        .details {
            display: inline-block;
            text-decoration: none;
            font-family: arial;
            border-radius: 4px;
            font-size: 12px;
            text-align: center;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            color: #ffffff;
            cursor: pointer;
            border: none;
            margin: 10px;
            padding: 0.87rem;
            -o-transition: all 0.4s ease-in-out;
            -webkit-transition: all 0.4s ease-in-out;
            transition: all 0.4s ease-in-out;
            background-color: #edadad;
            color: #ffffff;
            outline: none;
            animation: shine 6s linear 2s infinite normal;
            background-size: 250% 100%;
            background-image: linear-gradient(60deg, #edadad 0%, #edadad 40%, #efd3d3 66%, #edadad 93%);
            width: 150px;
            height: 40px;
            box-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2);
            display: flex;
            align-items: center;
            justify-content: center;
        }


        .noselect {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            -webkit-tap-highlight-color: transparent;
        }

        .card__button-container button {
            width: 150px;
            height: 50px;
            cursor: pointer;
            display: flex;
            align-items: center;
            background: red;
            border: none;
            border-radius: 5px;
            box-shadow: 1px 1px 3px rgba(0,0,0,0.15);
            background: #e62222;
        }

        .card__button-container button, button span {
            transition: 200ms;
        }

            .card__button-container button .text {
                transform: translateX(15px);
                color: white;
                font-weight: bold;
            }

            .card__button-container button .icon {
                position: absolute;
                border-left: 1px solid #c41b1b;
                transform: translateX(110px);
                height: 40px;
                width: 40px;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .card__button-container button svg {
                width: 15px;
                fill: #eee;
            }

            .card__button-container button:hover {
                background: #ff3636;
            }

                .card__button-container button:hover .text {
                    color: transparent;
                }

                .card__button-container button:hover .icon {
                    width: 150px;
                    border-left: none;
                    transform: translateX(0);
                }

            .card__button-container button:focus {
                outline: none;
            }

        .card__button-container {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Top bar -->
            <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top shadow p-3 mb-5 bg-white rounded">
                <div class="container-fluid">
                    <!-- Website logo -->
                    <img src="../../Assets/IMG/logo.png" alt="ONE" class="logo" />
                    <%-- <a class="navbar-brand" href="index.aspx">Application Charbon</a>--%>
                    <!-- Toggler button for mobile view -->
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <!-- Navigation links -->
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav ms-auto">
                            <li class="nav-item">
                                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-list-4" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>
                                <div class="collapse navbar-collapse" id="navbar-list-4">
                                    <ul class="navbar-nav">
                                        <li class="nav-item dropdown">
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
                                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"></a>
                                            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                                <a class="dropdown-item" href="Login/LoginForm.aspx">Déconnexion</a>
                                            </div>
                                        </li>
                                    </ul>
                                </div>

                            </li>
                        </ul>
                    </div>




                </div>
            </nav>


            <div class="col-md-3 col-lg-2">
                <div class="sidebar shadow p-3 mb-5 bg-white rounded">
                    <div class="list-group">
                        <a href="index.aspx" class="list-group-item list-group-item-action ">
                            <i class="bi bi-speedometer2 me-2"></i>Accueil
                        </a>

                        <a href="../Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action active" aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <ul class="submenu">
                            <li><a href="#">Station</a></li>
                            <li><a href="#">Origine</a></li>
                            <li><a href="#">Fournisseur</a></li>
                            <li><a href="#">Bateaux</a></li>
                            <li><a href="#">Type</a></li>
                            <li><a href="#">Stock</a></li>
                        </ul>


                        <a href="../PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
                        </a>
                        <a href="../AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="../Contrat/Contract.aspx" id="Contrat" class="list-group-item list-group-item-action" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>


                </div>

            </div>


            <!-- Main content -->
            <div class="col-md-9 col-lg-10 main-content py-5">
                <h2 class="title">Paramètrage</h2>
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Paramètre.aspx">Paramètrage</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Stock</li>
                    </ol>
                    <button type="button" class="btn btn-success btn-lg shadow" data-bs-toggle="modal" data-bs-target="#ajouterStockModal" style="position: absolute; top: 200px; right: 20px;">
                        <i class="bi bi-plus-lg"></i>
                        <span class="d-none d-md-inline-block">Ajouter un Stock</span>
                    </button>

                </nav>

                <div class='Container'>
                    <div class='Card' id='card'>
                        <h2 class='card__title'>Id Stock: <span class='card__titleSpan'>One</span></h2>
                        <div class='card__toggle-container'>
                            <button class="details" id="details-toggle">
                                Détails
                            </button>
                        </div>
                        <div class='card__content hidden' id='detail'>
                            <div class='card__features'>
                                <p class='card__feature'><b>Date</b> test</p>
                                <p class='card__feature'><b>Consommation</b></p>
                                <p class='card__feature'><b>Origine</b></p>
                                <p class='card__feature'><b>Livraison</b></p>
                                <p class='card__feature'><b>Id Bateau</b></p>
                                <p class='card__feature'><b>Décharge</b></p>
                            </div>
                        </div>
                        <div class="card__button-container">
                            <button class="noselect"><span class='text'>SUPPRIMER</span><span class="icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24"><path d="M24 20.188l-8.315-8.209 8.2-8.282-3.697-3.697-8.212 8.318-8.31-8.203-3.666 3.666 8.321 8.24-8.206 8.313 3.666 3.666 8.237-8.318 8.285 8.203z" /></svg></span></button>
                        </div>
                    </div>
                </div>


                <script>

                    const detailsToggle = document.getElementById('details-toggle');
                    const detailContent = document.getElementById('detail');
                    const card = document.querySelector('.Card');
                    const buttonContainer = document.querySelector('.card__button-container');

                    card.addEventListener('click', function () {
                        card.classList.toggle('open');
                    });

                    detailsToggle.addEventListener('click', function () {
                        detailContent.classList.toggle('hidden');
                        if (!detailContent.classList.contains('hidden')) {
                            paramContent.classList.add('hidden');
                        }
                    });

                    buttonContainer.addEventListener('click', function (event) {
                        event.stopPropagation();
                    });


                </script>









                <div class="container-fluid p-3">
                    <div class="container-fluid p-3">
                        <div class="table-responsive">


                            <table class="table table-hover table-bordered">
                                <thead class="bg-dark text-white">
                                    <tr>
                                        <th class="text-center">Date</th>
                                        <th class="text-center">Consommation</th>
                                        <th class="text-center">Livraison</th>
                                        <th class="text-center">Id Bateau</th>
                                        <th class="text-center">Decharge</th>
                                        <th class="text-center">Autonomie</th>
                                        <th class="text-center">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%@ Import Namespace="ApplicationCharbon.Services" %>
                                    <% var service = new CharbonAccessService();%>
                                    <% string IdBateau = Request.QueryString["id"];%>
                                    <% var va = service.GetMyDataStock();
                                        foreach (var tp in va)
                                        { %>
                                    <tr>
                                        <td><%= tp.date %></td>
                                        <td><%= tp.consommation %></td>
                                        <td><%= tp.livraison %></td>
                                        <td><%= IdBateau %></td>
                                        <td><%= tp.decharge %></td>
                                        <td><%= tp.autonomie %></td>
                                        <td class="text-center">
                                            <div class="btn-group">
                                                <button class="btn btn-sm dropdown-toggle" type="button" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="bi bi-three-dots-vertical"></i>
                                                </button>
                                                <ul class="dropdown-menu">
                                                    <li>
                                                        <a class="dropdown-item edit-stock" href="#" data-idstock="<%= tp.id_stock %>" data-consommation="<%= tp.consommation %>" data-livraison="<%= tp.livraison %>" data-decharge="<%= tp.decharge %>" data-autonomie="<%= tp.autonomie %>">
                                                            <i class="bi bi-pen me-2"></i>Modifier Stock
                                                        </a>
                                                    </li>
                                                    <li>
                                                        <hr class="dropdown-divider" />
                                                    </li>
                                                    <li>
                                                        <a class="dropdown-item delete-stock" href="#" data-idstock="<%= tp.id_stock %>">
                                                            <i class="bi bi-trash me-2"></i>Supprimer Stock
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

                    <!-- Ajouter Stock Modal HTML -->
                    <div class="modal fade" id="ajouterStockModal" tabindex="-1" aria-labelledby="ajouterStockModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <form runat="server">
                                    <div class="modal-header">
                                        <h2 class="modal-title" id="ajouterStockModalLabel">Ajouter Stock</h2>
                                        <button type="button" class="btn-close" data-dismiss="modal" aria-label="Close"></button>
                                    </div>

                                    <div class="modal-body">
                                        <div class="form-group">
                                            <label for="Date" class="form-label">Date </label>
                                            <asp:TextBox ID="date" runat="server" CssClass="form-control" required="required" type="date"></asp:TextBox>
                                        </div>

                                        <div class="form-group">
                                            <label for="Consommation" class="form-label">Consommation</label>
                                            <asp:TextBox ID="consommation" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="Livraison" class="form-label">Livraison</label>
                                            <asp:TextBox ID="livraison" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                        </div>

                                        <div class="form-group ">
                                            <label for="Id Bateau" class="form-label">Id Bateau</label>
                                            <asp:DropDownList ID="nombateauliste" runat="server" class="form-select"></asp:DropDownList>
                                        </div>
                                        <div class="form-group">
                                            <label for="Decharge" class="form-label">Decharge</label>
                                            <asp:TextBox ID="decharge" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <label for="Autonomie" class="form-label">Autonomie</label>
                                            <asp:TextBox ID="autonomie" runat="server" CssClass="form-control" required="required"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <asp:Button type="submit" Text="Ajouter stock" class="btn btn-success" OnClick="AddButton_Stock_Click" runat="server"></asp:Button>
                                        <asp:Button runat="server" Text="Annuler" CssClass="btn btn-secondary" data-dismiss="modal" />
                                    </div>

                                </form>
                            </div>
                        </div>
                    </div>
                    <!-- Edit Stock -->
                    <% Server.Transfer("updateStock.aspx");%>
                </div>
            </div>
        </div>
    </div>
</body>
</html>




