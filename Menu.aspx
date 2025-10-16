<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="HelpDeskWeb.Menu" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 240px;
            height: 100vh;
            background-color: #f0f8ff; /* azul bem claro */
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
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

        .main-content {
            margin-left: 240px;
            padding: 30px;
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
    </div>

    <div class="main-content">
        <h2>Bem-vindo ao sistema FAST HELP</h2>
        <p>Selecione uma opção no menu para começar.</p>
    </div>
</asp:Content>