﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ASW_DAL
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class ASWEntities : DbContext
    {
        public ASWEntities()
            : base("name=ASWEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Acceptance> Acceptances { get; set; }
        public virtual DbSet<Device> Devices { get; set; }
        public virtual DbSet<DeviceLifeCycle> DeviceLifeCycles { get; set; }
        public virtual DbSet<DeviceStatu> DeviceStatus { get; set; }
        public virtual DbSet<DeviceType> DeviceTypes { get; set; }
        public virtual DbSet<Document> Documents { get; set; }
        public virtual DbSet<DocumentDeliveryDetail> DocumentDeliveryDetails { get; set; }
        public virtual DbSet<DocumentType> DocumentTypes { get; set; }
        public virtual DbSet<Faulty> Faulties { get; set; }
        public virtual DbSet<Guaranty> Guaranties { get; set; }
        public virtual DbSet<Log> Logs { get; set; }
        public virtual DbSet<Partner> Partners { get; set; }
        public virtual DbSet<PartnerType> PartnerTypes { get; set; }
        public virtual DbSet<Setting> Settings { get; set; }
        public virtual DbSet<ShippingType> ShippingTypes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<TestStatu> TestStatus { get; set; }
        public virtual DbSet<UserRole> UserRoles { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
