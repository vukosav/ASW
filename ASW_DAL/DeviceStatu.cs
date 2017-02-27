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
    
    public partial class DeviceStatu
    {
        public DeviceStatu()
        {
            this.DeviceLifeCycles = new HashSet<DeviceLifeCycle>();
        }
    
        public int ID { get; set; }
        public string DeviceStatusName { get; set; }
        public string DemoReturnSold { get; set; }
        public string DemoNotes { get; set; }
        public string ReplacedDongle { get; set; }
        public string Description { get; set; }
        public Nullable<System.DateTime> StatusDateChanged { get; set; }
        public Nullable<bool> Replacement { get; set; }
        public string ReplacedWith { get; set; }
        public string FujitsuNotes { get; set; }
    
        public virtual ICollection<DeviceLifeCycle> DeviceLifeCycles { get; set; }
    }
}
