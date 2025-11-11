<%@ Page Title="Prioridades" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Prioridades.aspx.cs" Inherits="HelpDeskWeb.Prioridades" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        h2 {
            font-size: 24px;
            text-align: center;
            margin-bottom: 30px;
            color: #2c3e50;
            text-transform: uppercase;
        }

        .form-container {
            max-width: 600px;
            margin: 0 auto 40px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-group label {
            font-weight: bold;
            display: block;
            margin-bottom: 5px;
        }

        .form-group input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .btn {
            background-color: #0078d7;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 14px;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #005a9e;
        }

        .grid {
            max-width: 800px;
            margin: 0 auto;
        }
    </style>

    <h2>Prioridades</h2>

    <div class="form-container">
        <asp:Label ID="lblMensagem" runat="server" ForeColor="Green" Font-Bold="true" />

        <div class="form-group">
            <label for="txtPrioridade">Nome da Prioridade:</label>
            <asp:TextBox ID="txtPrioridade" runat="server" />
        </div>

        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn" OnClick="btnSalvar_Click" />
    </div>

    <div class="grid">
        <asp:GridView ID="GridPrioridades" runat="server" AutoGenerateColumns="False" OnRowCommand="GridPrioridades_RowCommand">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="ID" />
                <asp:BoundField DataField="Nome" HeaderText="Prioridade" />
                <asp:ButtonField ButtonType="Button" CommandName="Excluir" Text="Excluir" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>