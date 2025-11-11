using System;
using System.ComponentModel.DataAnnotations;

namespace HelpDeskWeb.Models
{
    public class Usuario
    {
        public int ID_Usuario { get; set; }

        public string Nome {  get; set; }

        public string Email { get; set; }

        public string Senha { get; set; }

        public DateTime? Data_Cadastro { get; set; }
    }
}