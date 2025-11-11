using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDeskWeb
{
    public partial class ChatAtendimento : Page
    {
        // Lista simulada de mensagens (em produção, usar banco de dados)
        private static List<Mensagem> mensagens = new List<Mensagem>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Captura o ID do chamado da URL
                string chamadoId = Request.QueryString["id"];
                lblChamadoId.Text = chamadoId;

                // Inicia contador de tempo
                ViewState["Minutos"] = 0;

                // Atualiza o chat
                AtualizarChat();
            }
        }

        // Envia nova mensagem
        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string texto = txtMensagem.Text.Trim();

            if (!string.IsNullOrEmpty(texto))
            {
                mensagens.Add(new Mensagem
                {
                    Autor = "Técnico",
                    Texto = texto
                });

                txtMensagem.Text = "";
                AtualizarChat();
            }
        }

        // Atualiza o tempo de atendimento a cada minuto
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            int minutos = Convert.ToInt32(ViewState["Minutos"]);
            minutos++;
            ViewState["Minutos"] = minutos;
            lblTempo.Text = minutos + " minutos";
        }

        // Atualiza a lista de mensagens
        private void AtualizarChat()
        {
            rptMensagens.DataSource = mensagens;
            rptMensagens.DataBind();
        }

        // Classe de mensagem
        public class Mensagem
        {
            public string Autor { get; set; }
            public string Texto { get; set; }
        }
    }
}