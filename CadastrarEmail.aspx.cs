using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class CadastrarEmail : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text.Trim();
            string email = txtEmail.Text.Trim();
            string senha = txtSenha.Text.Trim();
            string confirmar = txtConfirmarSenha.Text.Trim();
            bool aceitouTermos = chkTermos.Checked;

            if (string.IsNullOrEmpty(nome) || string.IsNullOrEmpty(email) ||
                string.IsNullOrEmpty(senha) || string.IsNullOrEmpty(confirmar))
            {
                lblMensagem.Text = "Todos os campos são obrigatórios.";
                lblMensagem.CssClass = "message error-message";
                lblMensagem.Visible = true;
            }
            else if (senha != confirmar)
            {
                lblMensagem.Text = "As senhas não coincidem.";
                lblMensagem.CssClass = "message error-message";
                lblMensagem.Visible = true;
            }
            else if (!aceitouTermos)
            {
                lblMensagem.Text = "Você precisa aceitar os termos.";
                lblMensagem.CssClass = "message error-message";
                lblMensagem.Visible = true;
            }
            else
            {
                lblMensagem.Text = $"Cadastro realizado com sucesso para '{nome}'!";
                lblMensagem.CssClass = "message success-message";
                lblMensagem.Visible = true;

                txtNome.Text = "";
                txtEmail.Text = "";
                txtSenha.Text = "";
                txtConfirmarSenha.Text = "";
                chkTermos.Checked = false;
            }
        }
    }
}