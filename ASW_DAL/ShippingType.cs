//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class ShippingType
    {
        public ShippingType()
        {
            this.DeviceLifeCycles = new HashSet<DeviceLifeCycle>();
            this.Faulties = new HashSet<Faulty>();
        }
    
        public int ID { get; set; }
        public string ShippingTypeName { get; set; }
        public string OffStockInHouse { get; set; }
        public string Description { get; set; }
    
        public virtual ICollection<DeviceLifeCycle> DeviceLifeCycles { get; set; }
        public virtual ICollection<Faulty> Faulties { get; set; }
    }
}
