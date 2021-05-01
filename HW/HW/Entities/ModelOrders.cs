namespace HW.Entities
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelOrders : DbContext
    {
        public ModelOrders()
            : base("name=ModelOrders")
        {
        }

        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<ListOfOrder> ListOfOrder { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<UserData> UserData { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Client>()
                .HasMany(e => e.Order)
                .WithRequired(e => e.Client)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Order>()
                .HasMany(e => e.ListOfOrder)
                .WithRequired(e => e.Order)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Products>()
                .Property(e => e.Price)
                .HasPrecision(19, 4);

            modelBuilder.Entity<Products>()
                .HasMany(e => e.ListOfOrder)
                .WithRequired(e => e.Products)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<UserData>()
                .HasMany(e => e.Client)
                .WithRequired(e => e.UserData)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<UserData>()
                .HasMany(e => e.Users)
                .WithRequired(e => e.UserData)
                .WillCascadeOnDelete(false);
        }
    }
}
