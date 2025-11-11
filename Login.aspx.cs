using HelpDeskWeb.Models;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Data.SqlClient;
using System.Runtime.Remoting.Messaging;
using System.Web.UI;

namespace HelpDeskWeb
{
    public partial class Login : System.Web.UI.Page
    {
        private readonly string _connectionString;

        public Login()
        {
            // Carrega do appsettings.json via IConfiguration
            _connectionString = ConfigHelper.Configuration.GetConnectionString("HelpDeskDB");
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            string login = txtUsuario.Text.Trim();
            string senha = txtSenha.Text.Trim();

            List<Usuario> usuario = new List<Usuario>();
            Usuario Autenticado = new Usuario();

            using (SqlConnection connection = new SqlConnection(_connectionString))
            {
                string query = "SELECT * FROM Usuario WHERE Email = @login AND Senha = @senha";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@login", login);
                    command.Parameters.AddWithValue("@senha", senha);

                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
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
        }
    }
}