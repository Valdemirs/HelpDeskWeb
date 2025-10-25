using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class CadastroUsuario : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            // Simulação de cadastro
            string nome = txtNome.Text;
            string email = txtEmail.Text;
            string senha = txtSenha.Text;
            string perfil = ddlPerfil.SelectedValue;

            // Aqui você pode salvar no banco de dados

            lblMensagem.Text = $"Usuário '{nome}' cadastrado com sucesso como {perfil}!";
        }
    }
}