<%@ Page Title="Novo Chamado" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NovoChamado.aspx.cs" Inherits="HelpDeskWeb.NovoChamado" %>

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

        .form-container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #f9f9f9;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .form-container h2 {
            margin-bottom: 20px;
            color: #0078d7;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }

        .form-group input,
        .form-group textarea,
        .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }

        .form-group textarea {
            resize: vertical;
            height: 100px;
        }

        .btn-enviar {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 6px;
            font-weight: bold;
            cursor: pointer;
        }

        .btn-enviar:hover {
            background-color: #005a9e;
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
            <div class="form-container">
                <h2>Abrir Novo Chamado</h2>

                <div class="form-group">
                    <label for="txtAssunto">Assunto</label>
                    <asp:TextBox ID="txtAssunto" runat="server" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="txtDescricao">Descrição</label>
                    <asp:TextBox ID="txtDescricao" runat="server" TextMode="MultiLine" CssClass="form-control" />
                </div>

                <div class="form-group">
                    <label for="ddlCategoria">Categoria</label>
                    <asp:DropDownList ID="ddlCategoria" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Selecione..." Value="" />
                        <asp:ListItem Text="Rede" Value="Rede" />
                        <asp:ListItem Text="Software" Value="Software" />
                        <asp:ListItem Text="Hardware" Value="Hardware" />
                        <asp:ListItem Text="Outro" Value="Outro" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="ddlPrioridade">Prioridade</label>
                    <asp:DropDownList ID="ddlPrioridade" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Baixa" Value="Baixa" />
                        <asp:ListItem Text="Média" Value="Média" />
                        <asp:ListItem Text="Alta" Value="Alta" />
                    </asp:DropDownList>
                </div>

                <div class="form-group">
                    <label for="fuAnexo">Anexo (opcional)</label>
                    <asp:FileUpload ID="fuAnexo" runat="server" />
                </div>

                <asp:Button ID="btnEnviar" runat="server" Text="Enviar Chamado" CssClass="btn-enviar" OnClick="btnEnviar_Click" />
            </div>
        </div>
    </div>
</asp:Content>