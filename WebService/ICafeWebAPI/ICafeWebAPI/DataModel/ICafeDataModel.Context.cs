﻿//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ICafeWebAPI.DataModel
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ICafeEntities : DbContext
    {
        public ICafeEntities()
            : base("name=ICafeEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<D_ItemTags> D_ItemTags { get; set; }
        public DbSet<M_Customers> M_Customers { get; set; }
        public DbSet<M_Devices> M_Devices { get; set; }
        public DbSet<M_ItemCategories> M_ItemCategories { get; set; }
        public DbSet<M_Items> M_Items { get; set; }
        public DbSet<M_Menus> M_Menus { get; set; }
        public DbSet<M_Orders> M_Orders { get; set; }
        public DbSet<M_Permissions> M_Permissions { get; set; }
        public DbSet<M_Roles> M_Roles { get; set; }
        public DbSet<M_Tables> M_Tables { get; set; }
        public DbSet<M_Tags> M_Tags { get; set; }
        public DbSet<M_Users> M_Users { get; set; }
    }
}
