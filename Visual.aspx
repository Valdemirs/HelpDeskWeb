<%@ Page Title="Visual" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Visual.aspx.cs" Inherits="HelpDeskWeb.Visual" %>

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
            background-color: #fff;
            overflow-y: auto;
            padding: 30px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        h2 {
            text-align: center;
            font-size: 28px;
            font-weight: bold;
            color: #2c3e50;
            margin-bottom: 30px;
        }

        .conteudo {
            width: 100%;
            max-width: 900px;
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        .formulario {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
        }

        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        select,
        input[type="file"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .btn-salvar {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
            align-self: flex-start;
        }

        .btn-salvar:hover {
            background-color: #005a9e;
        }

        .user-list h3 {
            font-size: 20px;
            color: #2c3e50;
            text-align: center;
            margin-bottom: 15px;
        }

        .user-list p {
            text-align: center;
            color: #555;
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
                padding: 20px;
            }

            .menu-item {
                padding: 10px;
                text-align: center;
                justify-content: center;
            }
        }
    </style>

    <div class="layout-wrapper">
        <div class="sidebar">
            <img src="Images/logo.png" alt="Logo FAST HELP" />
            <a class="menu-item" href="Dashboard.aspx"><i class="fas fa-chart-line"></i> DASHBOARD</a>
            <a class="menu-item" href="Chamados.aspx"><i class="fas fa-ticket-alt"></i> CHAMADOS</a>
            <a class="menu-item" href="Equipe.aspx"><i class="fas fa-users"></i> EQUIPE</a>
            <a class="menu-item" href="Clientes.aspx"><i class="fas fa-user-tie"></i> CLIENTES</a>
            <a class="menu-item active" href="Configuracao.aspx"><i class="fas fa-cogs"></i> CONFIGURAÇÃO</a>
            <a class="menu-item" href="Cadastro.aspx"><i class="fas fa-cogs"></i> CADASTRO</a>
        </div>

        <div class="main-content">
            <h2>Personalização Visual</h2>

            <div class="conteudo">
                <!-- FORMULÁRIO -->
                <div class="formulario">
                    <div class="form-group">
                        <label for="nomeEmpresa">Nome da Empresa</label>
                        <input type="text" id="nomeEmpresa" runat="server" placeholder="Ex: FAST HELP" />
                    </div>

                    <div class="form-group">
                        <label for="temaVisual">Tema</label>
                        <select id="temaVisual" runat="server">
                            <option value="Claro">Claro</option>
                            <option value="Escuro">Escuro</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="tamanhoFonte">Tamanho da Fonte</label>
                        <select id="tamanhoFonte" runat="server">
                            <option value="Normal">Normal</option>
                            <option value="Grande">Grande</option>
                            <option value="ExtraGrande">Extra Grande</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="librasAtivo">Suporte a Libras</label>
                        <select id="librasAtivo" runat="server">
                            <option value="Sim">Sim</option>
                            <option value="Não">Não</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="logoUpload">Logotipo</label>
                        <input type="file" id="logoUpload" runat="server" />
                    </div>

                    <button class="btn-salvar">Salvar Visual</button>
                </div>

                <!-- PRÉ-VISUALIZAÇÃO -->
                <div class="user-list">
                    <h3>Pré-visualização</h3>
                    <p>As configurações serão aplicadas ao sistema após salvar.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>