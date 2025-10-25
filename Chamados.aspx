<%@ Page Title="Chamados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chamados.aspx.cs" Inherits="HelpDeskWeb.Chamados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .layout-wrapper {
            display: flex;
            height: 100vh;
            overflow: hidden;
        }

        .sidebar {
            width: 240px;
            background-color: #f0f8ff;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-top: 20px;
            box-shadow: 2px 0 5px rgba(0,0,0,0.1);
            flex-shrink: 0;
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
            flex: 1;
            padding: 30px;
            background-color: #fff;
            overflow-y: auto;
        }

        .btn-novo {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            margin-bottom: 20px;
        }

        .btn-novo:hover {
            background-color: #005a9e;
        }

        .tabela-chamados {
            width: 100%;
            border-collapse: collapse;
        }

        .tabela-chamados th,
        .tabela-chamados td {
            border: 1px solid #ccc;
            padding: 10px;
            text-align: left;
        }

        .tabela-chamados th {
            background-color: #f0f8ff;
        }

        @media (max-width: 600px) {
            .layout-wrapper {
                flex-direction: column;
            }

            .sidebar {
                width: 100%;
                height: auto;
                flex-direction: row;
                justify-content: space-around;
                padding: 10px;
                box-shadow: none;
            }

            .main-content {
                margin-top: 10px;
                padding: 20px;
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
      <a class="menu-item active" href="Chamados.aspx"><i class="fas fa-ticket-alt"></i> CHAMADOS</a>
      <a class="menu-item" href="Equipe.aspx"><i class="fas fa-users"></i> EQUIPE</a>
      <a class="menu-item" href="Clientes.aspx"><i class="fas fa-user-tie"></i> CLIENTES</a>
      <a class="menu-item" href="Configuracao.aspx"><i class="fas fa-cogs"></i> CONFIGURAÇÃO</a>
       <a class="menu-item" href="Cadastro.aspx"><i class="fas fa-cogs"></i> CADASTRO</a>
  </div>

        <div class="main-content">
            <h2>Meus Chamados</h2>
            <a href="NovoChamado.aspx" class="btn-novo">+ Novo Chamado</a>

            <table class="tabela-chamados">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Assunto</th>
                        <th>Status</th>
                        <th>Data</th>
                        <th>Prioridade</th>
                        <th>Responsável</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>001</td>
                        <td>Erro no sistema de login</td>
                        <td>Aberto</td>
                        <td>18/10/2025</td>
                        <td>Alta</td>
                        <td>João Silva</td>
                    </tr>
                    <tr>
                        <td>002</td>
                        <td>Solicitação de acesso ao servidor</td>
                        <td>Em andamento</td>
                        <td>17/10/2025</td>
                        <td>Média</td>
                        <td>Maria Souza</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</asp:Content>