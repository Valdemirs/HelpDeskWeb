<%@ Page Title="Recuperar Senha" Language="C#" AutoEventWireup="true" CodeBehind="RecuperarSenha.aspx.cs" Inherits="HelpDeskWeb.RecuperarSenha" %>

<!DOCTYPE html>
<html lang="pt">
<head runat="server">
    <title>Recuperar Senha - FAST HELP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .recuperar-container {
            max-width: 500px;
            margin: 60px auto;
            padding: 25px;
            background-color: #f9f9f9;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .recuperar-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #0078d7;
        }

        label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #555;
        }

        input[type="email"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            margin-bottom: 15px;
        }

        .asp-button {
            width: 100%;
            padding: 12px;
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

        .message {
            margin-top: 15px;
            text-align: center;
            font-weight: bold;
        }

        .success-message {
            color: green;
        }

        .error-message {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="recuperar-container">
            <h2>RECUPERAR SENHA</h2>

            <asp:Label ID="lblEmail" runat="server" Text="Digite seu e-mail:" AssociatedControlID="txtEmail" />
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />

            <asp:Button ID="btnRecuperar" runat="server" Text="ENVIAR" CssClass="asp-button" OnClick="btnRecuperar_Click" />

            <asp:Label ID="lblMensagem" runat="server" CssClass="message" Visible="False" />
        </div>
    </form>
</body>
</html>