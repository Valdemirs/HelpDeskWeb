<%@ Page Title="Notificações por Email" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NotificacoesEmail.aspx.cs" Inherits="HelpDeskWeb.NotificacoesEmail" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
            text-transform: uppercase;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input, .form-group textarea {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #005a9e;
        }
    </style>

    <h2>Notificações por Email</h2>

    <div class="form-container">
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" Font-Bold="true" />

        <div class="form-group">
            <label for="txtAssunto">Assunto do Email:</label>
            <asp:TextBox ID="txtAssunto" runat="server" />
        </div>

        <div class="form-group">
            <label for="txtMensagem">Mensagem:</label>
            <asp:TextBox ID="txtMensagem" runat="server" TextMode="MultiLine" Rows="5" />
        </div>

        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn" OnClick="btnSalvar_Click" />
    </div>
</asp:Content>