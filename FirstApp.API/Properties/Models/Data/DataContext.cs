using Microsoft.EntityFrameworkCore;

namespace FirstApp.API.Properties.Models.Data
{
    public class DataContext : DbContext
    {
        public DataContext(DbContextOptions<DataContext> options) : base(options) {}

        public DbSet<Value> Values { get; set; }
        
    }
}