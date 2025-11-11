<%@ Page Title="Novo Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NovoCliente.aspx.cs" Inherits="HelpDeskWeb.NovoCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet" />

    <style>
        body {
            margin: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .layout-wrapper {
            display: flex;
            min-height: 100vh;
            padding-top: 70px;
        }

        .sidebar {
            width: 240px;
            background-color: #f0f8ff;
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
            font-weight: bold;
            color: #333;
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .menu-item i {
            font-size: 18px;
            color: #0078d7;
        }

        .menu-item:hover {
            background-color: #e0ecf8;
        }

        .menu-item.active {
            background-color: #0078d7;
            color: #fff;
        }

        .main-content {
            flex: 1;
            padding: 40px 40px 40px 20px;
            background-color: #fff;
            display: flex;
            flex-direction: column;
            align-items: center;
            box-sizing: border-box;
        }

        .topbar {
            position: fixed;
            top: 0;
            left: 240px;
            right: 0;
            height: 70px;
            background-color: #0078d7;
            color: white;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 0 30px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            z-index: 1000;
        }

        .search-box {
            display: flex;
            align-items: center;
            gap: 8px;
        }

        .search-box input {
            padding: 6px 12px;
            border: none;
            border-radius: 6px;
            font-size: 14px;
        }

        .top-icons {
            display: flex;
            align-items: center;
            gap: 20px;
        }

        .top-icons i {
            font-size: 18px;
            color: white;
            cursor: pointer;
        }

        .user-info {
            display: flex;
            align-items: center;
            gap: 10px;
            color: white;
        }

        .avatar {
            width: 40px;
            height: 40px;
            border-radius: 50%;
            object-fit: cover;
            border: 2px solid white;
        }

        h2 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 20px;
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
            width: 100%;
        }

        .form-wrapper {
            width: 100%;
            max-width: 600px;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="text"],
        input[type="email"],
        select,
        .form-wrapper input,
        .form-wrapper select {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 16px;
            width: 100%;
        }

        .btn-salvar {
            background-color: #0078d7;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            margin-top: 20px;
        }

        .btn-salvar:hover {
            background-color: #005a9e;
        }

        .mensagem {
            margin-top: 20px;
            color: green;
            font-weight: bold;
        }
    </style>

    <div class="layout-wrapper">
        <!-- Sidebar -->
        <div class="sidebar">
            <img src="Images/logo.png" alt="Logo FAST HELP" />
            <a class="menu-item" href="Dashboard.aspx"><i class="fas fa-chart-line"></i> DASHBOARD</a>
            <a class="menu-item" href="Chamados.aspx"><i class="fas fa-ticket-alt"></i> CHAMADOS</a>
            <a class="menu-item" href="Equipe.aspx"><i class="fas fa-users"></i> EQUIPE</a>
            <a class="menu-item" href="Clientes.aspx"><i class="fas fa-user-tie"></i> CLIENTES</a>
            <a class="menu-item" href="Configuracao.aspx"><i class="fas fa-cogs"></i> CONFIGURAÇÃO</a>
            <a class="menu-item active" href="Cadastro.aspx"><i class="fas fa-user-plus"></i> CADASTRO</a>
        </div>

        <!-- Conteúdo principal -->
        <div class="main-content">
            <!-- Topbar -->
            <div class="topbar">
                <div class="search-box">
                    <input type="text" placeholder="Pesquisar..." />
                    <i class="fas fa-search"></i>
                </div>

                <div class="top-icons">
                    <i class="fas fa-bell" title="Notificações"></i>
                    <i class="fas fa-moon" title="Modo Escuro"></i>
                </div>

                <div class="user-info">
                    <img src="Images/avatar.png" alt="Avatar" class="avatar" />
                    <div>
                        <strong>Valdemir</strong><br />
                        <span>Administrador</span>
                    </div>
                </div>
            </div>

            <!-- Formulário -->
            <h2>Novo Cliente</h2>

            <div class="form-wrapper">
                <label for="txtNome">Nome</label>
                <asp:TextBox ID="txtNome" runat="server" />

                <label for="txtEmail">E-mail</label>
                <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" />

                <label for="txtEmpresa">Empresa</label>
                <asp:TextBox ID="txtEmpresa" runat="server" />

                <label for="ddlStatus">Status</label>
                <asp:DropDownList ID="ddlStatus" runat="server">
                    <asp:ListItem Text="Ativo" Value="Ativo" />
                    <asp:ListItem Text="Inativo" Value="Inativo" />
                </asp:DropDownList>

                <asp:Button ID="btnSalvar" runat="server" Text="Salvar Cliente" CssClass="btn-salvar" OnClick="btnSalvar_Click" />

                <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" Visible="false" />
            </div>
        </div>
    </div>
</asp:Content>