<%@ Page Title="Segurança" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Seguranca.aspx.cs" Inherits="HelpDeskWeb.Seguranca" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2 {
            text-align: center;
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 30px;
            text-transform: uppercase;
        }

        .conteudo {
            max-width: 900px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        .formulario {
            display: flex;
            flex-direction: column;
            gap: 20px;
            background-color: #f0f8ff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
            color: #333;
        }

        input[type="text"],
        input[type="password"],
        select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }

        .btn-salvar {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            width: fit-content;
        }

        .btn-salvar:hover {
            background-color: #005a9e;
        }

        .mensagem {
            font-weight: bold;
            color: green;
            margin-bottom: 10px;
        }

        .user-list {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
        }

        .user-list h3 {
            font-size: 20px;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 15px;
        }

        .user-list table {
            width: 100%;
            border-collapse: collapse;
        }

        .user-list th,
        .user-list td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .user-list th {
            background-color: #e6f0fa;
        }

        .user-list tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>

    <h2>Gerenciar Segurança</h2>

    <div class="conteudo">
        <!-- Mensagem de feedback -->
        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" />

        <!-- Formulário de segurança -->
        <div class="formulario">
            <div class="form-group">
                <label for="txtNomeUsuario">Nome do Usuário</label>
                <asp:TextBox ID="txtNomeUsuario" runat="server" placeholder="Digite o nome do usuário" />
            </div>

            <div class="form-group">
                <label for="txtSenha">Nova Senha</label>
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Digite a nova senha" />
            </div>

            <div class="form-group">
                <label for="ddlNivel">Nível de Acesso</label>
                <asp:DropDownList ID="ddlNivel" runat="server">
                    <asp:ListItem Text="Administrador" Value="Administrador" />
                    <asp:ListItem Text="Suporte" Value="Suporte" />
                    <asp:ListItem Text="Cliente" Value="Cliente" />
                </asp:DropDownList>
            </div>

            <asp:Button ID="btnSalvar" runat="server" Text="Salvar Alterações" CssClass="btn-salvar" OnClick="btnSalvar_Click" />
        </div>

        <!-- Tabela de usuários cadastrados -->
        <div class="user-list">
            <h3>Usuários Cadastrados</h3>
            <table>
                <thead>
                    <tr>
                        <th>Nome</th>
                        <th>Nível</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>João Silva</td>
                        <td>Administrador</td>
                        <td>Ativo</td>
                    </tr>
                    <tr>
                        <td>Maria Souza</td>
                        <td>Suporte</td>
                        <td>Ativo</td>
                    </tr>
                    <tr>
                        <td>Lucas Rocha</td>
                        <td>Cliente</td>
                        <td>Inativo</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>