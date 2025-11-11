using System;
using System.Linq;

namespace HelpDeskWeb
{
    public partial class NovoCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                // Cria o contexto do banco (gerado pelo seu Entity Framework)
                using (var db = new FastHelpDBEntities()) // confirme o nome do seu contexto .edmx
                {
                    // Cria um novo registro de cliente com base nos campos da tela
                    var cliente = new Clientes
                    {
                        Nome = txtNome.Text.Trim(),
                        Email = txtEmail.Text.Trim(),
                        Empresa = txtEmpresa.Text.Trim(),
                        Status = ddlStatus.SelectedValue
                    };

                    // Adiciona o cliente na tabela
                    db.Clientes.Add(cliente);
                    db.SaveChanges(); // Grava no banco de dados

                    // Exibe mensagem de sucesso
                    lblMensagem.Text = $"✅ Cliente '{cliente.Nome}' cadastrado com sucesso!";
                    lblMensagem.ForeColor = System.Drawing.Color.Green;
                    lblMensagem.Visible = true;

                    // Limpa os campos do formulário
                    txtNome.Text = "";
                    txtEmail.Text = "";
                    txtEmpresa.Text = "";
                    ddlStatus.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                // Exibe mensagem de erro (caso falhe a conexão ou o modelo)
                lblMensagem.Text = "❌ Erro ao salvar: " + ex.Message;
                lblMensagem.ForeColor = System.Drawing.Color.Red;
                lblMensagem.Visible = true;
            }
        }
    }
}
