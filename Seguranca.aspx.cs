using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Seguranca : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nada a carregar por enquanto
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            // Captura os valores dos campos
            string nome = txtNomeUsuario.Text.Trim();
            string senha = txtSenha.Text.Trim();
            string nivel = ddlNivel.SelectedValue;

            // Validação simples
            if (string.IsNullOrEmpty(nome) || string.IsNullOrEmpty(senha))
            {
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = "Preencha todos os campos.";
                return;
            }

            // Aqui você pode salvar no banco futuramente
            lblMensagem.ForeColor = System.Drawing.Color.Green;
            lblMensagem.Text = $"Usuário '{nome}' atualizado com nível '{nivel}'.";
        }
    }
}