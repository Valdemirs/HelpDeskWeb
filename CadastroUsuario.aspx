<%@ Page Title="Cadastro de Usuário" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroUsuario.aspx.cs" Inherits="HelpDeskWeb.CadastroUsuario" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .form-container {
            max-width: 500px;
            margin: 60px auto;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            text-align: left;
        }

        .form-group label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-control {
            padding: 10px;
            border-radius: 6px;
            border: 1px solid #ccc;
        }

        .btn-cadastrar {
            background-color: #0078d7;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            align-self: center;
            width: 100%;
        }

        .btn-cadastrar:hover {
            background-color: #005a9e;
        }

        .mensagem {
            text-align: center;
            font-weight: bold;
            color: green;
            margin-top: 10px;
        }
    </style>

    <div class="form-container">
        <h2>Cadastro de Usuário</h2>

        <div class="form-group">
            <label for="txtNome">Nome</label>
            <asp:TextBox ID="txtNome" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
        </div>

        <div class="form-group">
            <label for="txtSenha">Senha</label>
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" TextMode="Password" />
        </div>

        <div class="form-group">
            <label for="ddlPerfil">Perfil</label>
            <asp:DropDownList ID="ddlPerfil" runat="server" CssClass="form-control">
                <asp:ListItem Text="Usuário" Value="Usuario" />
                <asp:ListItem Text="Técnico" Value="Tecnico" />
                <asp:ListItem Text="Administrador" Value="Admin" />
            </asp:DropDownList>
        </div>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn-cadastrar" OnClick="btnCadastrar_Click" />
        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" />
    </div>
</asp:Content>