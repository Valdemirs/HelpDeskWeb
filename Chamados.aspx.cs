using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDeskWeb
{
    public partial class Chamados : Page
    {
        // Lista simulada de chamados (em produção, usar banco de dados)
        private static List<Chamado> chamados = new List<Chamado>
        {
            new Chamado { Id = 1, Titulo = "Erro no login", Cliente = "João", Status = "Pendente" },
            new Chamado { Id = 2, Titulo = "Sistema lento", Cliente = "Maria", Status = "Em Análise" },
            new Chamado { Id = 3, Titulo = "Impressora não imprime", Cliente = "Carlos", Status = "Concluído" }
        };

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CarregarChamados();
            }
        }

        // Carrega os chamados em grids separados por status
        private void CarregarChamados()
        {
            GridPendentes.DataSource = chamados.Where(c => c.Status == "Pendente").ToList();
            GridPendentes.DataBind();

            GridAnalise.DataSource = chamados.Where(c => c.Status == "Em Análise").ToList();
            GridAnalise.DataBind();

            GridConcluidos.DataSource = chamados.Where(c => c.Status == "Concluído").ToList();
            GridConcluidos.DataBind();
        }

        // Redireciona para a tela de atendimento ao clicar em "Atender"
        protected void Grid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Atender")
            {
                string id = e.CommandArgument.ToString();
                Response.Redirect("ChatAtendimento.aspx?id=" + id);
            }
        }

        // Classe de chamado
        public class Chamado
        {
            public int Id { get; set; }
            public string Titulo { get; set; }
            public string Cliente { get; set; }
            public string Status { get; set; }
        }
    }
}
