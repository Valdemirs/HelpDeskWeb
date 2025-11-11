<%@ Page Title="Atendimento" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChatAtendimento.aspx.cs" Inherits="HelpDeskWeb.ChatAtendimento" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <!-- ScriptManager necessário para Timer funcionar -->
    <asp:ScriptManager ID="ScriptManager1" runat="server" />

    <style>
        h2 {
            font-size: 26px;
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50;
            text-transform: uppercase;
        }

        .chat-container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: #f0f8ff;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .chat-header {
            margin-bottom: 15px;
            font-weight: bold;
            font-size: 14px;
            color: #333;
        }

        .chat-box {
            height: 300px;
            overflow-y: auto;
            background-color: #fff;
            padding: 10px;
            border: 1px solid #ccc;
            margin-bottom: 15px;
            border-radius: 6px;
        }

        .chat-message {
            margin-bottom: 10px;
        }

        .chat-message span {
            font-weight: bold;
            color: #0078d7;
        }

        .chat-input {
            display: flex;
            gap: 10px;
        }

        .chat-input input {
            flex: 1;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .chat-input button {
            padding: 8px 16px;
            background-color: #0078d7;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .chat-input button:hover {
            background-color: #005a9e;
        }

        .tempo-box {
            margin-bottom: 15px;
            font-size: 14px;
            color: #333;
        }
    </style>

    <h2>Atendimento do Chamado</h2>

    <div class="chat-container">
        <!-- Cabeçalho com ID do chamado e tempo -->
        <div class="chat-header">
            Chamado ID: <asp:Label ID="lblChamadoId" runat="server" /> |
            Tempo de atendimento: <asp:Label ID="lblTempo" runat="server" Text="0 minutos" />
        </div>

        <!-- Caixa de mensagens -->
        <div class="chat-box" id="chatBox">
            <asp:Repeater ID="rptMensagens" runat="server">
                <ItemTemplate>
                    <div class="chat-message">
                        <span><%# Eval("Autor") %>:</span> <%# Eval("Texto") %>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <!-- Campo de envio -->
        <div class="chat-input">
            <asp:TextBox ID="txtMensagem" runat="server" />
            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
        </div>

        <!-- Timer invisível para contar minutos -->
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Timer ID="Timer1" runat="server" Interval="60000" OnTick="Timer1_Tick" />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
</asp:Content>