<%@ Page Title="Cadastro de Cliente" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroCliente.aspx.cs" Inherits="HelpDeskWeb.CadastroCliente" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h2>Cadastro de Cliente</h2>

        <div class="form-group">
            <label for="txtEmpresa">Nome da Empresa</label>
            <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtCNPJ">CNPJ</label>
            <asp:TextBox ID="txtCNPJ" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtResponsavel">Responsável</label>
            <asp:TextBox ID="txtResponsavel" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
        </div>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Cliente" CssClass="btn-cadastrar" OnClick="btnCadastrar_Click" />
        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" />
    </div>
</asp:Content>