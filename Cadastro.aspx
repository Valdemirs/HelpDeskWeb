<%@ Page Title="Cadastro" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="HelpDeskWeb.Cadastro" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        /* Título */
        h2 {
            font-size: 26px;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 30px;
            font-weight: bold;
            text-transform: uppercase;
        }

        /* Container geral dos cards */
        .cadastro-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        /* CARD PADRONIZADO COM CONFIGURAÇÃO */
        .cadastro-card {
            width: 220px; /* 🔹 mesmo tamanho do config */
            background-color: #f0f8ff;
            border-radius: 10px; /* 🔹 igual ao config */
            padding: 20px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s ease, background-color 0.3s ease;
            text-decoration: none;
            color: inherit;
        }

        /* Efeito hover igual ao config */
        .cadastro-card:hover {
            transform: scale(1.03);
            background-color: #e8f4ff;
        }

        /* Ícones */
        .cadastro-card i {
            font-size: 30px; /* 🔹 mesmo tamanho */
            color: #0078d7;
            margin-bottom: 12px;
        }

        /* Título dentro do card */
        .cadastro-card h3 {
            font-size: 18px;
            margin-bottom: 8px;
            color: #333;
        }

        /* Descrição */
        .cadastro-card p {
            font-size: 13px;
            color: #555;
        }

        /* Responsividade */
        @media (max-width: 768px) {
            .cadastro-card {
                width: 90%;
            }
        }
    </style>

    <h2>Cadastro</h2>

    <div class="cadastro-container">
        <!-- Botão Cadastrar Cliente -->
        <asp:LinkButton ID="btnCliente" runat="server" CssClass="cadastro-card" OnClick="btnCliente_Click">
            <i class="fas fa-user-tie"></i>
            <h3>Cadastrar Cliente</h3>
            <p>Adicione novos clientes ao sistema.</p>
        </asp:LinkButton>

        <!-- Botão Cadastrar Usuário -->
        <asp:LinkButton ID="btnUsuario" runat="server" CssClass="cadastro-card" OnClick="btnUsuario_Click">
            <i class="fas fa-user-plus"></i>
            <h3>Cadastrar Usuário</h3>
            <p>Crie contas de acesso para a equipe.</p>
        </asp:LinkButton>
    </div>
</asp:Content>
