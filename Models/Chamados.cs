using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelpDeskWeb.Models
{
    public class Chamados
    {
        private int Codigo_Chamado {  get; set; }

        private int ID_Usuario { get; set; }

        private string Descricao_Chamado { get; set;}

        private string Status { get; set;}

        private DateTime DataAbertura { get; set; }

        private string Tipo_Notificacao { get; set; }

        private string Mensagem {  get; set; }
    }
}