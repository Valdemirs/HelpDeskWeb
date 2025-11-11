using Microsoft.Extensions.Configuration;
using System.Configuration.Internal;
using System.Data.Entity;

namespace HelpDeskWeb.Models
{
    public class AppDBContext : DbContext
    {
        public string Conexao(IConfiguration configuration)
        {
            return configuration.GetConnectionString("HelpDeskDB");
        }
    }
}