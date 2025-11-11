<%@ Page Title="Configuração" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Configuracao.aspx.cs" Inherits="HelpDeskWeb.Configuracao" %>

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

        .config-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .config-card {
            width: 220px;
            background-color: #f0f8ff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s ease;
            text-decoration: none;
            color: inherit;
        }

        .config-card:hover {
            transform: scale(1.03);
            background-color: #e8f4ff;
        }

        .config-card i {
            font-size: 30px;
            color: #0078d7;
            margin-bottom: 12px;
        }

        .config-card h3 {
            font-size: 18px;
            margin-bottom: 8px;
            color: #333;
        }

        .config-card p {
            font-size: 13px;
            color: #555;
        }

        @media (max-width: 768px) {
            .config-card {
                width: 90%;
            }
        }
    </style>

    <h2>Configurações do Sistema</h2>

    <div class="config-container">
        <!-- Cartão Segurança -->
        <asp:LinkButton ID="btnSeguranca" runat="server" CssClass="config-card" OnClick="btnSeguranca_Click">
            <i class="fas fa-user-shield"></i>
            <h3>Segurança</h3>
            <p>Gerencie usuários, senhas e permissões de acesso.</p>
        </asp:LinkButton>

        <!-- Cartão Categorias -->
        <asp:LinkButton ID="btnCategorias" runat="server" CssClass="config-card" OnClick="btnCategorias_Click">
            <i class="fas fa-tags"></i>
            <h3>Categorias de Chamados</h3>
            <p>Crie e edite tipos de chamados e prioridades.</p>
        </asp:LinkButton>

        <!-- Cartão Notificações -->
        <asp:LinkButton ID="btnNotificacoes" runat="server" CssClass="config-card" OnClick="btnNotificacoes_Click">
            <i class="fas fa-bell"></i>
            <h3>Notificações</h3>
            <p>Configure alertas e mensagens automáticas.</p>
        </asp:LinkButton>
    </div>
</asp:Content>