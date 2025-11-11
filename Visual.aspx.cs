using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HelpDeskWeb
{
    public partial class Visual : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                nomeEmpresa.Value = string.Empty;
                temaVisual.SelectedIndex = -1;
                tamanhoFonte.SelectedIndex = -1;
                librasAtivo.SelectedIndex = -1;
            }
        }
    }
}