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
    
    public partial class Guaranty
    {
        public Guaranty()
        {
            this.DocumentDeliveryDetails = new HashSet<DocumentDeliveryDetail>();
        }
    
        public int ID { get; set; }
        public string Standard { get; set; }
        public string years2 { get; set; }
        public string years3 { get; set; }
    
        public virtual ICollection<DocumentDeliveryDetail> DocumentDeliveryDetails { get; set; }
    }
}
