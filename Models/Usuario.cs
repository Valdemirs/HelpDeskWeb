using System;
using System.ComponentModel.DataAnnotations;

namespace HelpDeskWeb.Models
{
    public class Usuario
    {
        private int ID_Usuario { get; set; }

        private string Nome {  get; set; }

        private string Email { get; set; }

        private string Senha { get; set; }

        private DateTime Data_Cadastro { get; set; }
    }
}