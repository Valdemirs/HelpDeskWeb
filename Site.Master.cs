using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string currentPage = System.IO.Path.GetFileName(Request.Path).ToLower();

            // Destaca o item ativo no menu lateral
            if (currentPage == "dashboard.aspx")
                linkDashboard.Attributes["class"] += " active";
            else if (currentPage == "chamados.aspx")
                linkChamados.Attributes["class"] += " active";
            else if (currentPage == "equipe.aspx")
                linkEquipe.Attributes["class"] += " active";
            else if (currentPage == "clientes.aspx")
                linkClientes.Attributes["class"] += " active";
            else if (currentPage == "configuracao.aspx")
                linkConfiguracao.Attributes["class"] += " active";
            else if (currentPage == "cadastro.aspx")
                linkCadastro.Attributes["class"] += " active";

            // Se quiser que o botão CADASTRO apareça só para administradores:
            // if (Session["Perfil"]?.ToString() != "Admin")
            //     linkCadastro.Visible = false;
        }
    }
}