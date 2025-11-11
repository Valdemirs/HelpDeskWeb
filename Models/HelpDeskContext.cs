using System.Data.Entity;

namespace HelpDeskWeb.Models
{
    public class HelpDeskContext : DbContext
    {
        public DbSet<Usuario> Usuarios { get; set; }
    }
}