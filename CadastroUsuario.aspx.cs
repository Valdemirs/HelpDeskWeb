using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class CadastrarUsuario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text.Trim();
            string login = txtLogin.Text.Trim();
            string senha = txtSenha.Text.Trim();
            string perfil = ddlPerfil.SelectedValue;

            if (string.IsNullOrEmpty(nome) || string.IsNullOrEmpty(login) || string.IsNullOrEmpty(senha) || string.IsNullOrEmpty(perfil))
            {
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = "Preencha todos os campos corretamente.";
                return;
            }

            // Aqui você pode salvar os dados no banco ou exibir uma mensagem
            lblMensagem.ForeColor = System.Drawing.Color.Green;
            lblMensagem.Text = $"Usuário '{nome}' cadastrado com sucesso!";
        }
    }
}