using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Login : Page
    {
        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text.Trim() == "admin" && txtSenha.Text.Trim() == "1234")
            {
                Session["usuario"] = txtUsuario.Text.Trim();
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                lblMensagemErro.Text = "Usuário ou senha inválidos.";
                lblMensagemErro.Visible = true;
            }
        }
    }
}