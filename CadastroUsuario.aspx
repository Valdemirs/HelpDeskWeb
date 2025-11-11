<%@ Page Title="Cadastrar Usuário" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastrarUsuario.aspx.cs" Inherits="HelpDeskWeb.CadastrarUsuario" %>

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

        .form-group input, .form-group select {
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

    <h2>Cadastrar Usuário</h2>

    <div class="form-container">
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" Font-Bold="true" />

        <div class="form-group">
            <label for="txtNome">Nome:</label>
            <asp:TextBox ID="txtNome" runat="server" />
        </div>

        <div class="form-group">
            <label for="txtLogin">Login:</label>
            <asp:TextBox ID="txtLogin" runat="server" />
        </div>

        <div class="form-group">
            <label for="txtSenha">Senha:</label>
            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" />
        </div>

        <div class="form-group">
            <label for="ddlPerfil">Perfil:</label>
            <asp:DropDownList ID="ddlPerfil" runat="server">
                <asp:ListItem Text="Selecione" Value="" />
                <asp:ListItem Text="Administrador" Value="Admin" />
                <asp:ListItem Text="Técnico" Value="Tecnico" />
                <asp:ListItem Text="Usuário" Value="Usuario" />
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn-submit" OnClick="btnCadastrar_Click" />
    </div>
</asp:Content>