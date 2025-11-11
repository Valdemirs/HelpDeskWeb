using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class CadastrarCliente : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text.Trim();
            string empresa = txtEmpresa.Text.Trim();
            string email = txtEmail.Text.Trim();
            string telefone = txtTelefone.Text.Trim();

            // Aqui você pode salvar os dados no banco ou exibir uma mensagem
            lblMensagem.Text = $"Cliente '{nome}' cadastrado com sucesso!";
        }
    }
}