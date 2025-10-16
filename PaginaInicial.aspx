<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaInicial.aspx.cs" Inherits="HelpDeskWeb.PaginaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Página Inicial</title>
    <style>
        .welcome-container {
            width: 400px;
            margin: 80px auto;
            padding: 30px;
            background-color: #e8f0fe;
            border-radius: 10px;
            text-align: center;
            font-family: 'Segoe UI', sans-serif;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .welcome-container h2 {
            color: #333;
        }

        .welcome-container p {
            color: #555;
            font-size: 16px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="welcome-container">
            <h2>Bem-vindo, Valdemir!</h2>
            <p>Você fez login com sucesso.</p>
        </div>
    </form>
</body>
</html>