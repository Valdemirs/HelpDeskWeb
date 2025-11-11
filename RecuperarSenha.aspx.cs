using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class RecuperarSenha : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            string email = txtEmail.Text.Trim();

            if (string.IsNullOrEmpty(email))
            {
                lblMensagem.Text = "Por favor, digite seu e-mail.";
                lblMensagem.CssClass = "message error-message";
                lblMensagem.Visible = true;
            }
            else
            {
                // Aqui você pode implementar o envio de e-mail ou verificação no banco

                lblMensagem.Text = $"Se o e-mail '{email}' estiver cadastrado, você receberá instruções.";
                lblMensagem.CssClass = "message success-message";
                lblMensagem.Visible = true;

                txtEmail.Text = "";
            }
        }
    }
}