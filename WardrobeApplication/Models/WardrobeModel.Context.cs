﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WardrobeApplication.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WardrobeDBEntities : DbContext
    {
        public WardrobeDBEntities()
            : base("name=WardrobeDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Closet> Closets { get; set; }
        public virtual DbSet<ClothingType> ClothingTypes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        public System.Data.Entity.DbSet<WardrobeApplication.Models.Outfit> Outfits { get; set; }
    }
}
