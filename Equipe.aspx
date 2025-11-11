<%@ Page Title="Equipe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Equipe.aspx.cs" Inherits="HelpDeskWeb.Equipe" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
    h2 {
        font-size: 26px;
        text-align: center;
        margin-bottom: 30px;
        color: #2c3e50;
        text-transform: uppercase;
    }

    .tabela-container {
        max-width: 1000px;
        margin: 0 auto;
        background-color: #ffffff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 2px 8px rgba(0,0,0,0.05);
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
</style>
 

    <h2>Equipe de Suporte</h2>

    <div class="tabela-container">
        <asp:GridView ID="GridEquipe" runat="server" AutoGenerateColumns="False" CssClass="grid-style">
            <Columns>
                <asp:BoundField DataField="Nome" HeaderText="Nome" />
                <asp:BoundField DataField="Cargo" HeaderText="Cargo" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>