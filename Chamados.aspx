<%@ Page Title="Chamados" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chamados.aspx.cs" Inherits="HelpDeskWeb.Chamados" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2 {
            font-size: 26px;
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
            text-transform: uppercase;
        }

        .chamado-container {
            max-width: 1000px;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
            gap: 40px;
        }

        .chamado-section {
            background-color: #ffffff;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.05);
        }

        .chamado-section h3 {
            font-size: 20px;
            color: #0078d7;
            margin-bottom: 15px;
            display: flex;
            align-items: center;
            gap: 10px;
        }

        .chamado-section h3 i {
            font-size: 22px;
        }

        .grid-style {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            overflow: hidden;
        }

        .grid-style th {
            background-color: #e6f0fa;
            color: #333;
            padding: 10px;
            text-align: left;
            font-weight: bold;
        }

        .grid-style td {
            padding: 10px;
            border-top: 1px solid #f0f0f0;
        }

        .grid-style tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .btn-atender {
            background-color: #28a745;
            color: white;
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            font-size: 14px;
            cursor: pointer;
        }

        .btn-atender:hover {
            background-color: #005a9e;
        }
    </style>

    <h2>Chamados</h2>

    <div class="chamado-container">
        <!-- Chamados Pendentes -->
        <div class="chamado-section">
            <h3><i class="fas fa-hourglass-start"></i> Pendentes</h3>
            <asp:GridView ID="GridPendentes" runat="server" AutoGenerateColumns="False" CssClass="grid-style" OnRowCommand="Grid_RowCommand">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Titulo" HeaderText="Título" />
                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:Button ID="btnAtender" runat="server" Text="Atender" CssClass="btn-atender"
                                CommandName="Atender" CommandArgument='<%# Eval("Id") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <!-- Chamados em Análise -->
        <div class="chamado-section">
            <h3><i class="fas fa-search"></i> Em Análise</h3>
            <asp:GridView ID="GridAnalise" runat="server" AutoGenerateColumns="False" CssClass="grid-style">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Titulo" HeaderText="Título" />
                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- Chamados Concluídos -->
        <div class="chamado-section">
            <h3><i class="fas fa-check-circle"></i> Concluídos</h3>
            <asp:GridView ID="GridConcluidos" runat="server" AutoGenerateColumns="False" CssClass="grid-style">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="ID" />
                    <asp:BoundField DataField="Titulo" HeaderText="Título" />
                    <asp:BoundField DataField="Cliente" HeaderText="Cliente" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
