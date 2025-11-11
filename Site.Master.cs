using System;
using System.Web.UI.HtmlControls;

namespace HelpDeskWeb
{
    public partial class SiteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 🔹 Pega o nome da página atual (exemplo: "Dashboard.aspx")
            string paginaAtual = System.IO.Path.GetFileName(Request.Path);

            // 🔹 Limpa qualquer item ativo anterior
            LimparAtivos();

            // 🔹 Marca o botão correspondente à página atual
            switch (paginaAtual.ToLower())
            {
                case "dashboard.aspx":
                    linkDashboard.Attributes["class"] = "menu-item active";
                    break;

                case "chamados.aspx":
                    linkChamados.Attributes["class"] = "menu-item active";
                    break;

                case "equipe.aspx":
                    linkEquipe.Attributes["class"] = "menu-item active";
                    break;

                case "clientes.aspx":
                    linkClientes.Attributes["class"] = "menu-item active";
                    break;

                case "configuracao.aspx":
                    linkConfiguracao.Attributes["class"] = "menu-item active";
                    break;

                case "cadastro.aspx":
                    linkCadastro.Attributes["class"] = "menu-item active";
                    break;

                default:
                    break;
            }
        }

        /// <summary>
        /// 🔹 Remove a classe "active" de todos os links antes de aplicar novamente.
        /// </summary>
        private void LimparAtivos()
        {
            linkDashboard.Attributes["class"] = "menu-item";
            linkChamados.Attributes["class"] = "menu-item";
            linkEquipe.Attributes["class"] = "menu-item";
            linkClientes.Attributes["class"] = "menu-item";
            linkConfiguracao.Attributes["class"] = "menu-item";
            linkCadastro.Attributes["class"] = "menu-item";
        }
    }
}
