using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelpDeskWeb.Models
{
    public class Solucao
    {
        private int Codigo_Solucao {  get; set; }

        private int Codigo_Chamado { get; set; }

        private string Descricao_Solucao { get; set; }

        private int Nota_Avaliacao { get; set; }

        private string Comentario { get; set; }
    }
}