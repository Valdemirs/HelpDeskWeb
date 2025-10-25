using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class CadastroCliente : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            // Simulação de cadastro
            string empresa = txtEmpresa.Text;
            string cnpj = txtCNPJ.Text;
            string responsavel = txtResponsavel.Text;
            string email = txtEmail.Text;

            // Aqui você pode salvar no banco de dados

            lblMensagem.Text = $"Cliente '{empresa}' cadastrado com sucesso!";
        }
    }
}