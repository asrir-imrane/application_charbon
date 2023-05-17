<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="ApplicationCharbon.UI.index" %>

<%@ Import Namespace="ApplicationCharbon.Services" %>
<%@ Import Namespace="Newtonsoft.Json" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

    <title>Accueil</title>
    <!-- Fontawesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Dosis" rel="stylesheet" />

    <!-- Bootstrap 5 CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.css" />

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
    <link rel="stylesheet" href="../Assets/CSS/IndexPage.css" />
    <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
    <!-- Add Bootstrap JavaScript and jQuery -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="../Assets/Scripts/script.js"></script>
    <script src="../Assets/Scripts/nav.js"></script>
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
    <scriptr>
        <script>
            AOS.init();
            window.onscroll = () => {
                toggleTopButton();
            }
            function scrollToTop() {
                window.scrollTo({ top: 0, behavior: 'smooth' });
            }

            function toggleTopButton() {
                if (document.body.scrollTop > 20 ||
                    document.documentElement.scrollTop > 20) {

                    document.getElementById('back-to-up').classList.remove('d-none');
                } else {

                    document.getElementById('back-to-up').classList.add('d-none');
                }
            }
        </script>
    </scriptr>

    <!-- BOX ICONS CSS-->
    <link href="https://cdn.jsdelivr.net/npm/boxicons@2.0.5/css/boxicons.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <style>
        .card-header {
            width: 550px;
            height: 500px;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            margin-top: 40px;
        }

        .second {
            width: 950px;
            height: 500px;
            border-radius: 5px;
            background-color: #ffffff;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            margin-top: 40px;
        }

        .statistics {
            margin-right: 70px;
        }


        .dashboard_title {
            font-size: 30px;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .card-header-title {
            font-size: 25px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        .header-icon {
            margin-right: 10px;
        }

        .status_report_box {
            width: 500px;
            height: 400px;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            margin: 20px auto;
            border-radius: 5px;
            margin-top: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        canvas#appelOffreChart {
            width: 100%;
            height: 100%;
        }




        .card-body {
            height: 150px;
            border-radius: 5px;
        }

        #appelOffreChart {
            width: 100%;
            height: 100%;
        }


        .status_report_box canvas {
            display: block;
            margin: 20px auto;
            width: 100%;
            height: 100%;
        }

        .back-to-top {
            position: fixed;
            bottom: 20px;
            right: 20px;
            width: 50px;
            height: 50px;
            background-color: #3c5a65;
            color: #fff;
            border: none;
            border-radius: 50%;
            font-size: 20px;
            cursor: pointer;
            transition: all 0.3s ease-in-out;
            z-index: 999;
        }

            .back-to-top:hover {
                background-color: #fff;
                color: #333;
                box-shadow: 0px 0px 10px #333;
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
                    <img src="../Assets/IMG/logo.png" alt="ONE" class="logo" />
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
                        <a href="index.aspx" class="list-group-item list-group-item-action active">
                            <i class="bi bi-speedometer2 me-2"></i>Accueil
                        </a>
                        <a href="Paramètre.aspx" id="Paramètre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-sliders"></i>Paramètre
                        </a>
                        <ul class="submenu">
                            <li><a href="#">Station</a></li>
                            <li><a href="#">Origine</a></li>
                            <li><a href="#">Fournisseur</a></li>
                            <li><a href="#">Bateaux</a></li>
                            <li><a href="#">Type</a></li>
                        </ul>


                        <a href="PlanningPrevisionnel/PlanningPrevisionnel.aspx" id="Planning_Previsionnel" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-calendar-event"></i>Planning Previsionnel
                        </a>
                        <a href="AppelOffre/AppelOffre.aspx" id="Appel_Offre" class="list-group-item list-group-item-action " aria-current="true">
                            <i class="bi bi-list-columns"></i>Appel Offre
                        </a>
                        <a href="Contrat/Contract.aspx" id="Contrat" class="list-group-item list-group-item-action" aria-current="true">
                            <i class="bi bi-file-earmark-post"></i>Contrat
                        </a>
                    </div>
                </div>
            </div>



            <div class="col-md-9 col-lg-10 main-content py-5">
                <div class="section-title" data-aos="fade-up">
                    <h2>Accueil</h2>
                    <p class="section">
                    </p>
                </div>


                <div class="main-container" id="wrapper">


                    <div class="container-fluid">
                        <div class="dashboard_title" data-aos="fade-right">Tableau de bord</div>


                        <div class="row">
                            <%@ Import Namespace="ApplicationCharbon.Services" %>
                            <% var service = new CharbonAccessService();%>
                            <% var station = service.GetNumberStation(); %>
                            <% var AO = service.GetNumberAO(); %>
                            <% var contrat = service.GetNumberContrat(); %>

                            <!-- card1 -->
                            <div class="col-md-4" data-aos="fade-right">
                                <div class="card shadow border-0">
                                    <div class="card-body" style="background-color: orange;">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Stations</span>
                                                <span class="h3 font-bold mb-0"><%= station %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape  text-white text-lg rounded-circle">
                                                    <i class="bi bi-lightning-charge"></i>
                                                </div>
                                            </div>
                                        </div>


                                    </div>
                                </div>
                            </div>
                            <!-- card2 -->
                            <div class="col-md-4" data-aos="fade-up">
                                <div class="card shadow border-0">
                                    <div class="card-body" style="background-color: #F8875A;">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Appels d'Offres</span>
                                                <span class="h3 font-bold mb-0"><%= AO %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape text-white text-lg rounded-circle">
                                                    <i class="bi bi-megaphone"></i>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                            <!-- card3 -->
                            <div class="col-md-4" data-aos="fade-left">
                                <div class="card shadow border-0">
                                    <div class="card-body" style="background-color: #34D1B5;">
                                        <div class="row">
                                            <div class="col">
                                                <span class="h6 font-semibold text-muted text-sm d-block mb-2">Contrats</span>
                                                <span class="h3 font-bold mb-0"><%= contrat %></span>
                                            </div>
                                            <div class="col-auto">
                                                <div class="icon icon-shape  text-white text-lg rounded-circle">
                                                    <i class="bi bi-file-earmark-text"></i>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <!-- Total -->

                        <table id="status-table" class="table table-hover table-nowrap" style="display: none;">
                            <thead class="thead-light">
                                <tr class="text-center">
                                    <th>Id Apple d'Offre</th>
                                    <th>Type</th>
                                    <th>Tonnage</th>
                                    <th>Nbr Bateaux</th>
                                    <th>Date Creation</th>
                                    <th>Date Emission</th>
                                    <th>Date Livraison</th>
                                    <th>Observation</th>
                                    <th>Statut</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%@ Import Namespace="ApplicationCharbon.Services" %>
                                <% var services = new CharbonAccessService();%>
                                <% var va = services.GetMyDataAppelOffre();
                                    foreach (var tp in va)
                                    { %>
                                <tr class="text-center <%= tp.statut %>">
                                    <td><%= tp.id_appOffre %></td>
                                    <td><%= tp.type %></td>
                                    <td><%= tp.tonnage %></td>
                                    <td><%= tp.nbr_bateaux %></td>
                                    <td><%= tp.date_creation.ToString("yyyy-MM-dd") %></td>
                                    <td><%= tp.date_Emission.ToString("yyyy-MM-dd") %></td>
                                    <td><%= tp.date_livraison.ToString("yyyy-MM-dd") %></td>
                                    <td><%= tp.observation %></td>
                                    <td>
                                        <div style="display: flex; align-items: flex-start;">
                                            <% if (tp.statut == "validee")
                                                { %>
                                             &#x1F7E2;
 
                                            <% }
                                                else if (tp.statut == "en_attente")
                                                { %>
                                            &#x1F7E1;
 
                                            <% }
                                                else if (tp.statut == "rejetee")
                                                { %>
                                            &#x1F534;
 
                                            <% } %>
                                            <%= tp.statut %>
                                        </div>
                                    </td>
                                    <td style="white-space: nowrap;">
                                        <a type="button" class="edit-AO" href="#" data-toggle="modal" data-appoffreid="<%= tp.id_appOffre %>" data-planingid="<%= tp.id_planning %>" data-types="<%= tp.type %>" data-tonn="<%= tp.tonnage %>" data-nbr="<%= tp.nbr_bateaux %>" data-creation="<%= tp.date_creation %>" data-emission="<%= tp.date_Emission %>" data-livraison="<%= tp.date_livraison %>" data-obser="<%= tp.observation %>" data-stat="<%= tp.statut %>">
                                            <i class="btn-edit bi bi-pen me-2" title="Modifier" style="color: orange;"></i>
                                        </a>
                                        <a href="#" class="delete-AO" data-toggle="modal" data-appoffreid='<%= tp.id_appOffre %>'>
                                            <i class="bi bi-x-lg" title="Supprimer" style="color: red;"></i>
                                        </a>
                                    </td>
                                </tr>
                                <% } %>
                            </tbody>
                        </table>


                        <div class="row">
                            <div class="col-md-4 statistics " data-aos="fade-right">
                                <div class="card-header">
                                    <div class="row">
                                        <div class="card-header-title">
                                            <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"></i>
                                            Appel d'offre
                                        </div>
                                        <div class="status_report_box Regular shadow">
                                            <canvas id="appelOffreChart" style="width: 100%; height: 100%;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="col-md-4" data-aos="fade-left">
                                <div class="card-header second">
                                    <div class="row">
                                        <div class="card-header-title">
                                            <i class="header-icon lnr-apartment icon-gradient bg-love-kiss"></i>
                                            Statistiques de contrats
                                        </div>
                                        <div class="status_report_box Regular shadow">
                                            <canvas id="chart" style="width: 100%; height: 100%;"></canvas>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>


                <script>
    <% var Service = new CharbonAccessService();
                    var Station = service.GetNumberContratByMonth(1);
                    var contratData = JsonConvert.SerializeObject(Station); %>

    <%-- Create the chart with Chart.js --%>
                    var ctx = document.getElementById('chart').getContext('2d');
                    var chart = new Chart(ctx, {
                        type: 'line', // Change the chart type to 'line' for an area chart
                        data: {
                            labels: ["Janvier", "Février", "Mars", "Avril", "Mai", "Juin", "Juillet", "Août", "Septembre", "Octobre", "Novembre", "Décembre"],
                            datasets: [{
                                label: "Nombre de contrats",
                                data: JSON.parse('<%= contratData %>'),
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 1,
                                fill: true,
                                tension: 0.4
                            }]
                        },
                        options: {
                            scales: {
                                y: {
                                    beginAtZero: true
                                }
                            }
                        }
                    });
                </script>




                <script>
                    // Define the function to generate the chart
                    function generateChart() {
                        // Get the table rows containing the data
                        const tableRows = document.querySelectorAll('.table tbody tr');

                        // Initialize data arrays for each status
                        const rejectedData = [];
                        const pendingData = [];
                        const activatedData = [];

                        // Loop through table rows and extract data for each month
                        tableRows.forEach(function (row) {
                            const dateEmission = new Date(row.cells[5].innerText);
                            const month = dateEmission.getMonth();
                            const status = row.classList.contains('rejetee')
                                ? 'rejected'
                                : row.classList.contains('en_attente')
                                    ? 'pending'
                                    : 'activated';

                            // Increment the corresponding status count for the month
                            switch (status) {
                                case 'rejected':
                                    rejectedData[month] = (rejectedData[month] || 0) + 1;
                                    break;
                                case 'pending':
                                    pendingData[month] = (pendingData[month] || 0) + 1;
                                    break;
                                case 'activated':
                                    activatedData[month] = (activatedData[month] || 0) + 1;
                                    break;
                            }
                        });

                        // Prepare the chart data
                        const chartData = {
                            labels: ['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'],
                            datasets: [
                                {
                                    label: 'Rejetées',
                                    backgroundColor: 'red',
                                    data: rejectedData
                                },
                                {
                                    label: 'En attente',
                                    backgroundColor: 'orange',
                                    data: pendingData
                                },
                                {
                                    label: 'Activées',
                                    backgroundColor: 'green',
                                    data: activatedData
                                }
                            ]
                        };

                        // Create the chart
                        const ctx = document.getElementById('appelOffreChart').getContext('2d');
                        new Chart(ctx, {
                            type: 'bar',
                            data: chartData,
                            options: {
                                responsive: true,
                                scales: {
                                    x: { stacked: true },
                                    y: {
                                        stacked: true,
                                        min: 0,
                                        max: 20,
                                        ticks: {
                                            stepSize: 1
                                        }
                                    }
                                }
                            }
                        });
                    }

                    // Call the function when the DOM content is loaded
                    document.addEventListener('DOMContentLoaded', generateChart);
                </script>

                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>





            </div>

        </div>
    </div>
    <button class="back-to-top" onclick="scrollToTop()" id="back-to-up">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </button>
    <script src="../Assets/Scripts/main.js"></script>


</body>
</html>
