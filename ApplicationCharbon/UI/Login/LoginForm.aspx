<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ApplicationCharbon.UI.Login.LoginForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous" />
    <link rel="stylesheet" href="../../Assets/CSS/LoginStyle.css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@6.2.0/css/fontawesome.min.css" />
    <title>Connexion</title>
</head>
<body>
    <div class="Login">
        <div class="section">
            <div class="login bg-white m-4">
                <h1 class="text-center">
                    <svg class="img" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0z" />
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8zm8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1z" />
                    </svg>
                </h1>


                <form class="" runat="server">
                    <div class="form-group">
                        <label class="form-label" type="email">
                            Nom Utilisateur 
                        </label>
                        <input type="text" class="form-control" placeholder="Nom Utilisateur" runat="server" id="UserLogin" required="required" />


                    </div>

                    <div class="form-group">
                        <label class="form-label" type="password">
                            Mot de passe
                        </label>
                        <input type="password" class="form-control" placeholder="Mot de passe" runat="server" id="UserPassword" required="required" />


                    </div>



                    <asp:Button type="submit" Text="S'identifier" runat="server" class="w-100  btn btn-lg btn-primary" OnClick="LoginButton_Click"></asp:Button>
                    <div class="mt-4">
                        <asp:Label runat="server" ID="errorMessage" Visible="false" Text="Nom Utilisateur  ou mot de passe invalide" CssClass=" alert alert-danger"></asp:Label>
                        <asp:Label runat="server" ID="successMessage" Text="Vous vous êtes connecté avec succès!" Visible="false" CssClass=" alert alert-success"></asp:Label>

                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>

