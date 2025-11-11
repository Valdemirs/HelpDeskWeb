<%@ Page Title="Cadastrar Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarCliente.aspx.cs" Inherits="HelpDeskWeb.CadastrarCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2 {
            font-size: 26px;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            text-transform: uppercase;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 6px;
            color: #333;
        }

        .form-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .btn-submit {
            background-color: #0078d7;
            color: white;
            border: none;
            padding: 10px 20px;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn-submit:hover {
            background-color: #005a9e;
        }
    </style>

    <h2>Cadastrar Cliente</h2>

    <div class="form-container">
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" Font-Bold="true" />

        <div class="form-group">
            <label for="txtNome">Nome:</label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmpresa">Empresa:</label>
            <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email:</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
        </div>

        <div class="form-group">
            <label for="txtTelefone">Telefone:</label>
            <asp:TextBox ID="txtTelefone" runat="server" CssClass="form-control" />
        </div>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn-submit" OnClick="btnCadastrar_Click" />
    </div>
</asp:Content>