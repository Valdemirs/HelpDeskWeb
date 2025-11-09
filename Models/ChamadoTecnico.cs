using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelpDeskWeb.Models
{
    public class ChamadoTecnico
    {
        private int Codigo_Chamado {  get; set; }

        private int Codigo_Tecnico { get; set; }

        private DateTime Data_Abertura { get; set; }
    }
}