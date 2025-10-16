using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nada aqui por enquanto
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text;
            string senha = txtSenha.Text;

            // Simulação de login válido
            if (usuario == "admin" && senha == "1234")
            {
                Response.Redirect("PaginaInicial.aspx");
                // Aqui você pode carregar dados ou liberar acesso sem redirecionar, se necessário
            }
            else
            {
                lblMensagemErro.Text = "Usuário ou senha inválidos.";
                lblMensagemErro.Visible = true;
            }
        }
    }
}