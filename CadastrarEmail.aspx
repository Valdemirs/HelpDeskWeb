<%@ Page Title="Criar Conta" Language="C#" AutoEventWireup="true" CodeBehind="CadastrarEmail.aspx.cs" Inherits="HelpDeskWeb.CadastrarEmail" %>

<!DOCTYPE html>
<html lang="pt">
<head runat="server">
    <title>Criar Conta - FAST HELP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <style>
        .form-container {
            max-width: 400px;
            margin: 80px auto;
            padding: 30px;
            background-color: #f9f9f9;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', sans-serif;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #0078d7;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group input[type="text"],
        .form-group input[type="email"],
        .form-group input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
        }

        .form-group label {
            display: block;
            margin-bottom: 6px;
            font-weight: bold;
            color: #555;
        }

        .checkbox-group {
            margin-top: 10px;
            display: flex;
            align-items: center;
            font-size: 14px;
            color: #555;
        }

        .checkbox-group input {
            margin-right: 8px;
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
            margin-top: 20px;
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
        <div class="form-container">
            <h2>CRIAR SUA CONTA</h2>

            <div class="form-group">
                <asp:Label ID="lblNome" runat="server" Text="Nome Completo:" AssociatedControlID="txtNome" />
                <asp:TextBox ID="txtNome" runat="server" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblEmail" runat="server" Text="E-mail:" AssociatedControlID="txtEmail" />
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblSenha" runat="server" Text="Senha:" AssociatedControlID="txtSenha" />
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" />
            </div>

            <div class="form-group">
                <asp:Label ID="lblConfirmarSenha" runat="server" Text="Confirmar Senha:" AssociatedControlID="txtConfirmarSenha" />
                <asp:TextBox ID="txtConfirmarSenha" runat="server" TextMode="Password" />
            </div>

            <div class="checkbox-group">
                <asp:CheckBox ID="chkTermos" runat="server" />
                <label for="chkTermos">Termo de Uso e Política de Privacidade</label>
            </div>

            <asp:Button ID="btnRegistrar" runat="server" Text="REGISTRAR" CssClass="asp-button" OnClick="btnRegistrar_Click" />

            <asp:Label ID="lblMensagem" runat="server" CssClass="message" Visible="False" />
        </div>
    </form>
</body>
</html>