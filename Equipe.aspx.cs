using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDeskWeb
{
    public partial class Equipe : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GridEquipe.DataSource = ObterEquipe();
                GridEquipe.DataBind();
            }
        }

        protected void GridEquipe_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Detalhes")
            {
                string idMembro = e.CommandArgument.ToString();
                Response.Write($"<script>alert('Visualizando detalhes do membro {idMembro}.');</script>");
            }
        }

        private List<Membro> ObterEquipe()
        {
            return new List<Membro>
            {
                new Membro { Id = 1, Nome = "Lucas Pereira", Cargo = "Técnico de Suporte", Email = "lucas@fasthelp.com", Status = "Ativo" },
                new Membro { Id = 2, Nome = "Fernanda Lima", Cargo = "Analista de Sistemas", Email = "fernanda@fasthelp.com", Status = "Ativo" },
                new Membro { Id = 3, Nome = "Rafael Souza", Cargo = "Coordenador de TI", Email = "rafael@fasthelp.com", Status = "Em férias" }
            };
        }

        public class Membro
        {
            public int Id { get; set; }
            public string Nome { get; set; }
            public string Cargo { get; set; }
            public string Email { get; set; }
            public string Status { get; set; }
        }
    }
}