using System;
using System.Collections.Generic;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Clientes : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Lista simulada de clientes
                var listaClientes = new List<Cliente>
                {
                    new Cliente { Nome = "Carlos Lima", Empresa = "TechCorp", Email = "carlos@techcorp.com", Status = "Ativo" },
                    new Cliente { Nome = "Ana Paula", Empresa = "SoftPlus", Email = "ana@softplus.com", Status = "Inativo" },
                    new Cliente { Nome = "Fernanda Costa", Empresa = "InovaTI", Email = "fernanda@inovati.com", Status = "Ativo" }
                };

                // Vincula os dados ao GridView
                GridClientes.DataSource = listaClientes;
                GridClientes.DataBind();
            }
        }

        // Classe Cliente com propriedades públicas
        public class Cliente
        {
            public string Nome { get; set; }
            public string Empresa { get; set; }
            public string Email { get; set; }
            public string Status { get; set; }
        }
    }
}