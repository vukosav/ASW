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
    
    public partial class Acceptance
    {
        public int ID { get; set; }
        public string AcceptanceNo { get; set; }
        public Nullable<System.DateTime> AcceptanceDate { get; set; }
        public Nullable<int> DeviceID { get; set; }
        public string AcceptanceSerialNo { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<bool> ArrivedYesNo { get; set; }
    
        public virtual Device Device { get; set; }
        public virtual User User { get; set; }
    }
}