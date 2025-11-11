
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace HelpDeskWeb.Models
{
    public class Relatorio
    {
        private int Codigo { get; set; }

        private int Data_Inicial { get; set; }

        private int Data_Final { get; set; }

        private string Status { get; set; }
    }
}
