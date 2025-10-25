<%@ Page Title="Cadastro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="HelpDeskWeb.Cadastro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            position: relative;
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 240px;
            height: 100vh;
            background-color: #f0f8ff;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
            z-index: 1000;
        }

        .sidebar img {
            width: 120px;
            margin-bottom: 30px;
        }

        .menu-item {
            width: 100%;
            padding: 15px 20px;
            text-align: left;
            cursor: pointer;
            font-weight: bold;
            transition: background-color 0.3s ease;
            color: #333;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .menu-item:hover {
            background-color: #e0ecf8;
        }

        .menu-item i {
            font-size: 18px;
            color: #0078d7;
        }

        .menu-item.active {
            background-color: #0078d7;
            color: #fff;
        }

        .main-content {
            margin-left: 240px;
            padding: 30px;
            min-height: 100vh;
            background-color: #fff;
            z-index: 1;
        }

        .cadastro-container {
            max-width: 600px;
            margin: 0 auto;
            text-align: center;
        }

        .cadastro-container h2 {
            margin-bottom: 30px;
        }

        .cadastro-btn {
            display: block;
            width: 100%;
            max-width: 300px;
            margin: 15px auto;
            padding: 15px;
            font-size: 18px;
            font-weight: bold;
            background-color: #0078d7;
            color: white;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .cadastro-btn:hover {
            background-color: #005a9e;
        }

        @media (max-width: 600px) {
            .sidebar {
                width: 100%;
                height: auto;
                flex-direction: row;
                justify-content: space-around;
                padding: 10px;
            }

            .main-content {
                margin-left: 0;
                margin-top: 80px;
            }

            .menu-item {
                padding: 10px;
                text-align: center;
                justify-content: center;
            }
        }
    </style>

    <div class="sidebar">
        <img src="Images/logo.png" alt="Logo FAST HELP" />
        <a class="menu-item" href="Dashboard.aspx"><i class="fas fa-chart-line"></i> DASHBOARD</a>
        <a class="menu-item" href="Chamados.aspx"><i class="fas fa-ticket-alt"></i> CHAMADOS</a>
        <a class="menu-item" href="Equipe.aspx"><i class="fas fa-users"></i> EQUIPE</a>
        <a class="menu-item" href="Clientes.aspx"><i class="fas fa-user-tie"></i> CLIENTES</a>
        <a class="menu-item" href="Configuracao.aspx"><i class="fas fa-cogs"></i> CONFIGURAÇÃO</a>
        <a class="menu-item active" href="Cadastro.aspx"><i class="fas fa-cogs"></i> CADASTRO</a>
    </div>

    <div class="main-content">
        <div class="cadastro-container">
            <h2>Escolha o tipo de cadastro</h2>
            <asp:Button ID="btnUsuario" runat="server" Text="Cadastrar Usuário" CssClass="cadastro-btn" OnClick="btnUsuario_Click" />
            <asp:Button ID="btnCliente" runat="server" Text="Cadastrar Cliente" CssClass="cadastro-btn" OnClick="btnCliente_Click" />
            <asp:Button ID="btnFornecedor" runat="server" Text="Cadastrar Fornecedor" CssClass="cadastro-btn" OnClick="btnFornecedor_Click" />
        </div>
    </div>
</asp:Content>