<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="HelpDeskWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .login-container {
            max-width: 700px;
            margin: 60px auto;
            padding: 25px;
            background-color: #f9f9f9;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .login-flex {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 40px;
        }

        .logo-side img {
            width: 150px;
            max-width: 100%;
        }

        .form-side {
            flex: 1;
        }

        .form-side label {
            display: block;
            margin-top: 12px;
            color: #555;
            font-weight: bold;
            text-align: left;
        }

        .form-side input[type="text"],
        .form-side input[type="password"] {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        .asp-button {
            width: 100%;
            padding: 12px;
            margin-top: 20px;
            background-color: #0078d7;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .asp-button:hover {
            background-color: #005a9e;
        }

        .error-message {
            margin-top: 15px;
            color: red;
            text-align: center;
            font-weight: bold;
        }

        @media (max-width: 600px) {
            .login-flex {
                flex-direction: column;
                text-align: center;
            }

            .form-side label {
                text-align: center;
            }
        }
    </style>

    <div class="login-container">
        <div class="login-flex">
            <!-- Coluna da imagem -->
            <div class="logo-side">
                <img src="Images/logo.png" alt="Logo FAST HELP" />
            </div>

            <!-- Coluna do formulário -->
            <div class="form-side">
                <asp:Label ID="lblUsuario" runat="server" Text="Usuário:" AssociatedControlID="txtUsuario" />
                <asp:TextBox ID="txtUsuario" runat="server" />

                <asp:Label ID="lblSenha" runat="server" Text="Senha:" AssociatedControlID="txtSenha" />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" />

                <asp:Button ID="btnEntrar" runat="server" Text="Entrar!" CssClass="asp-button" OnClick="btnEntrar_Click" />

                <asp:Label ID="lblMensagemErro" runat="server" CssClass="error-message" Visible="False" />
            </div>
        </div>
    </div>
</asp:Content>