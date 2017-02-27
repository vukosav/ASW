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
    
    public partial class DocumentDeliveryDetail
    {
        public int ID { get; set; }
        public Nullable<int> DocumentID { get; set; }
        public string NrNumber { get; set; }
        public Nullable<int> Quantity { get; set; }
        public string Project { get; set; }
        public Nullable<int> NumberOfPackages { get; set; }
        public Nullable<double> Weight { get; set; }
        public Nullable<int> DeviceID { get; set; }
        public string Description { get; set; }
        public string Unit { get; set; }
        public Nullable<double> UnitPrice { get; set; }
        public Nullable<double> Discount { get; set; }
        public Nullable<int> GuarantyID { get; set; }
        public string CRMID1 { get; set; }
        public string CRMID2 { get; set; }
        public Nullable<int> EndUser { get; set; }
        public string Dimensions { get; set; }
        public Nullable<System.DateTime> WarrantyExpirationDate { get; set; }
    
        public virtual Device Device { get; set; }
        public virtual Document Document { get; set; }
        public virtual Guaranty Guaranty { get; set; }
        public virtual Partner Partner { get; set; }
    }
}