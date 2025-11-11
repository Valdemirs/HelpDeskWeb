using System;

namespace HelpDeskWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string login = txtUsuario.Text.Trim();
            string senha = txtSenha.Text.Trim();

            
            if (login == "admin" && senha == "123")
            {
                Session["usuario"] = login;
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