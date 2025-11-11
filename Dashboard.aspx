<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="HelpDeskWeb.Dashboard" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

    <style>
        h2 {
            font-size: 28px;
            color: #2c3e50;
            margin-bottom: 10px;
            text-align: center;
            font-weight: bold;
            text-transform: uppercase;
            width: 100%;
        }

        .subtitle {
            font-size: 16px;
            color: #555;
            margin-bottom: 30px;
            text-align: center;
        }

        .stats-boxes {
            display: flex;
            gap: 30px;
            margin-bottom: 40px;
            flex-wrap: wrap;
            justify-content: center;
        }

        .box {
            background-color: #ecf0f1;
            padding: 20px;
            border-radius: 8px;
            width: 220px;
            text-align: center;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
        }

        .box i {
            font-size: 28px;
            color: #0078d7;
            margin-bottom: 10px;
        }

        .box h3 {
            font-size: 18px;
            margin-bottom: 5px;
            color: #0078d7;
        }

        .box p {
            font-size: 22px;
            font-weight: bold;
            color: #2c3e50;
        }

        .chart-container {
            width: 100%;
            max-width: 800px;
            background-color: #fafafa;
            border: 1px solid #ccc;
            border-radius: 8px;
            padding: 20px;
            margin: 0 auto 40px auto;
        }

        .chart-container h4 {
            text-align: center;
            margin-bottom: 20px;
            color: #2c3e50;
        }
    </style>

    <h2>Bem-vindo ao sistema FAST HELP</h2>
    <div class="subtitle">Resumo geral dos chamados e desempenho da equipe:</div>

    <div class="stats-boxes">
        <div class="box">
            <i class="fas fa-exclamation-circle"></i>
            <h3>Chamados Abertos</h3>
            <p>42 chamados em aberto</p>
        </div>
        <div class="box">
            <i class="fas fa-check-circle"></i>
            <h3>Chamados Resolvidos</h3>
            <p>128 chamados concluídos</p>
        </div>
        <div class="box">
            <i class="fas fa-clock"></i>
            <h3>Tempo Médio de Resposta</h3>
            <p>2h 15min</p>
        </div>
        <div class="box">
            <i class="fas fa-smile"></i>
            <h3>Satisfação</h3>
            <p>92% de aprovação</p>
        </div>
    </div>

    <div class="chart-container">
        <h4>Distribuição de Chamados</h4>
        <canvas id="barChart"></canvas>
    </div>

    <div class="chart-container">
        <h4>Evolução Semanal de Chamados</h4>
        <canvas id="lineChart"></canvas>
    </div>

    <script>
        window.addEventListener("DOMContentLoaded", () => {
            const barCtx = document.getElementById('barChart').getContext('2d');
            new Chart(barCtx, {
                type: 'bar',
                data: {
                    labels: ['RH', 'Financeiro', 'Marketing', 'Suporte'],
                    datasets: [{
                        label: 'Chamados',
                        data: [25, 40, 15, 90],
                        backgroundColor: '#0078d7'
                    }]
                },
                options: {
                    responsive: true,
                    scales: {
                        y: { beginAtZero: true }
                    },
                    plugins: {
                        legend: { display: false }
                    }
                }
            });

            const lineCtx = document.getElementById('lineChart').getContext('2d');
            new Chart(lineCtx, {
                type: 'line',
                data: {
                    labels: ['Seg', 'Ter', 'Qua', 'Qui', 'Sex'],
                    datasets: [{
                        label: 'Chamados Resolvidos',
                        data: [12, 18, 22, 30, 46],
                        borderColor: '#27ae60',
                        backgroundColor: 'rgba(39,174,96,0.2)',
                        fill: true,
                        tension: 0.3
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: { display: false }
                    },
                    scales: {
                        y: { beginAtZero: true }
                    }
                }
            });
        });
    </script>
</asp:Content>