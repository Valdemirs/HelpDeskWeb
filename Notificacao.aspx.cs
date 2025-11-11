using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class NotificacoesEmail : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string assunto = txtAssunto.Text.Trim();
            string mensagem = txtMensagem.Text.Trim();

            if (!string.IsNullOrEmpty(assunto) && !string.IsNullOrEmpty(mensagem))
            {
                lblMensagem.Text = "Notificação por email salva com sucesso!";
                txtAssunto.Text = "";
                txtMensagem.Text = "";
            }
            else
            {
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = "Preencha todos os campos.";
            }
        }
    }
}