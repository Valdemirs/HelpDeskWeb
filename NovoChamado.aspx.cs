using System;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class NovoChamado : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Nada necessário aqui por enquanto
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            // Verifica se os controles existem
            if (txtAssunto != null && txtDescricao != null && ddlCategoria != null && ddlPrioridade != null)
            {
                string assunto = txtAssunto.Text.Trim();
                string descricao = txtDescricao.Text.Trim();
                string categoria = ddlCategoria.SelectedValue;
                string prioridade = ddlPrioridade.SelectedValue;
                string anexo = fuAnexo.HasFile ? fuAnexo.FileName : "Nenhum";

                string mensagem = $"Chamado enviado com sucesso!\\n\\n" +
                                  $"Assunto: {assunto}\\n" +
                                  $"Descrição: {descricao}\\n" +
                                  $"Categoria: {categoria}\\n" +
                                  $"Prioridade: {prioridade}\\n" +
                                  $"Anexo: {anexo}";

                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('{mensagem}');", true);

                // Limpa os campos
                txtAssunto.Text = "";
                txtDescricao.Text = "";
                ddlCategoria.SelectedIndex = 0;
                ddlPrioridade.SelectedIndex = 0;
            }
        }
    }
}