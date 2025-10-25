<%@ Page Title="Cadastro de Fornecedor" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CadastroFornecedor.aspx.cs" Inherits="HelpDeskWeb.CadastroFornecedor" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-container">
        <h2>Cadastro de Fornecedor</h2>

        <div class="form-group">
            <label for="txtEmpresa">Nome da Empresa</label>
            <asp:TextBox ID="txtEmpresa" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtServico">Serviço ou Produto</label>
            <asp:TextBox ID="txtServico" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtContato">Contato</label>
            <asp:TextBox ID="txtContato" runat="server" CssClass="form-control" />
        </div>

        <div class="form-group">
            <label for="txtEmail">Email</label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" TextMode="Email" />
        </div>

        <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Fornecedor" CssClass="btn-cadastrar" OnClick="btnCadastrar_Click" />
        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem" />
    </div>
</asp:Content>