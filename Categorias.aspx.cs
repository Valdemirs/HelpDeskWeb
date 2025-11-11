using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDeskWeb
{
    public partial class Prioridades : Page
    {
        private static List<Prioridade> prioridades = new List<Prioridade>();
        private static int contador = 1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                AtualizarGrid();
            }
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            string nome = txtPrioridade.Text.Trim();

            if (!string.IsNullOrEmpty(nome))
            {
                prioridades.Add(new Prioridade { Id = contador++, Nome = nome });
                txtPrioridade.Text = "";
                lblMensagem.ForeColor = System.Drawing.Color.Green;
                lblMensagem.Text = "Prioridade cadastrada com sucesso!";
                AtualizarGrid();
            }
            else
            {
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Text = "Informe o nome da prioridade.";
            }
        }

        protected void GridPrioridades_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Excluir")
            {
                int index = Convert.ToInt32(e.CommandArgument);
                int id = Convert.ToInt32(GridPrioridades.Rows[index].Cells[0].Text);

                prioridades.RemoveAll(p => p.Id == id);
                lblMensagem.ForeColor = System.Drawing.Color.Green;
                lblMensagem.Text = $"Prioridade ID {id} excluída com sucesso!";
                AtualizarGrid();
            }
        }

        private void AtualizarGrid()
        {
            GridPrioridades.DataSource = prioridades;
            GridPrioridades.DataBind();
        }

        public class Prioridade
        {
            public int Id { get; set; }
            public string Nome { get; set; }
        }
    }
}