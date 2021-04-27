namespace HW.NewFolderOrders
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ModelOrders : DbContext
    {
        public ModelOrders()
            : base("name=ModelOrders1")
        {
        }

        public virtual DbSet<Client> Client { get; set; }
        public virtual DbSet<Order> Order { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<UserData> UserData { get; set; }
        public virtual DbSet<Users> Users { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Order>()
                .HasMany(e => e.Client)
                .WithRequired(e => e.Order)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<Order>()
                .HasMany(e => e.Products)
                .WithMany(e => e.Order)
                .Map(m => m.ToTable("ListOfProductsInOrder").MapLeftKey("OrderId").MapRightKey("ProductId"));

            modelBuilder.Entity<Products>()
                .Property(e => e.Price)
                .HasPrecision(19, 4);

            modelBuilder.Entity<UserData>()
                .HasMany(e => e.Client)
                .WithRequired(e => e.UserData)
                .HasForeignKey(e => e.UserId)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<UserData>()
                .HasMany(e => e.Users)
                .WithRequired(e => e.UserData)
                .HasForeignKey(e => e.UserId)
                .WillCascadeOnDelete(false);
        }
    }
}
