
<%@ Page Title="Login" Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HelpDeskWeb.Login" %>
<!DOCTYPE html>
<html lang="pt">
<head runat="server">
    <title>Login - FAST HELP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <style>
        /* Container principal */
        .login-container {
            max-width: 700px;
            margin: 60px auto;
            padding: 25px;
            background-color: #f9f9f9;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Layout flexível para logo e formulário */
        .login-flex {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 40px;
        }

        /* Estilo da logo */
        .logo-side img {
            width: 150px;
            max-width: 100%;
        }

        /* Área do formulário */
        .form-side {
            flex: 1;
        }

        .form-side h2 {
            text-align: center;
            color: #0078d7;
            margin-bottom: 20px;
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

        /* Botão de login */
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

        /* Mensagem de erro */
        .error-message {
            margin-top: 15px;
            color: red;
            text-align: center;
            font-weight: bold;
        }

        /* Links adicionais */
        .link-row {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .link-row a {
            color: #0078d7;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 12px;
            border-radius: 6px;
            transition: background-color 0.3s ease;
        }

        .link-row a:hover {
            background-color: #e6f0ff;
        }

        /* Responsividade */
        @media (max-width: 600px) {
            .login-flex {
                flex-direction: column;
                text-align: center;
            }

            .form-side label {
                text-align: center;
            }

            .link-row {
                flex-direction: column;
                align-items: center;
                gap: 10px;
            }
        }
    </style>
</head>
<body>
    <form runat="server">
        <div class="login-container">
            <div class="login-flex">
                <!-- Logo -->
                <div class="logo-side">
                    <img src="Images/logo.png" alt="Logo FAST HELP" />
                </div>

                <!-- Formulário de login -->
                <div class="form-side">
                    <h2>LOGIN -  FAST HELP</h2>

                    <asp:Label ID="lblUsuario" runat="server" Text="Usuário:" AssociatedControlID="txtUsuario" />
                    <asp:TextBox ID="txtUsuario" runat="server" />

                    <asp:Label ID="lblSenha" runat="server" Text="Senha:" AssociatedControlID="txtSenha" />
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" />

                    <asp:Button ID="btnEntrar" runat="server" Text="ENTRAR" CssClass="asp-button" OnClick="btnEntrar_Click" />

                    <asp:Label ID="lblMensagemErro" runat="server" CssClass="error-message" Visible="False" />

                    <!-- Links de recuperação e cadastro -->
                    <div class="link-row">
                        <a href="RecuperarSenha.aspx">Esqueceu a senha?</a>
                        <a href="CadastrarEmail.aspx">Cadastrar-se</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>