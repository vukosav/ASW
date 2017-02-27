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
    
    public partial class Document
    {
        public Document()
        {
            this.DeviceLifeCycles = new HashSet<DeviceLifeCycle>();
            this.DocumentDeliveryDetails = new HashSet<DocumentDeliveryDetail>();
        }
    
        public int ID { get; set; }
        public Nullable<int> DocumentTypeID { get; set; }
        public Nullable<int> UserID { get; set; }
        public Nullable<int> CustomerID { get; set; }
        public Nullable<System.DateTime> DocDate { get; set; }
        public Nullable<int> ConsigneeID { get; set; }
        public Nullable<int> CourierID { get; set; }
        public string InvoiceNo { get; set; }
        public string DeliveryNoteNo { get; set; }
        public string ShippingTerminal { get; set; }
        public string PaymentTerms { get; set; }
        public string CurrencyCurrency { get; set; }
        public string AddContact { get; set; }
        public string AddAttention { get; set; }
        public string TrackingNo { get; set; }
        public string VendorShippInvoiceNo { get; set; }
        public string DeliveryReference { get; set; }
    
        public virtual ICollection<DeviceLifeCycle> DeviceLifeCycles { get; set; }
        public virtual DocumentType DocumentType { get; set; }
        public virtual Partner Partner { get; set; }
        public virtual Partner Partner1 { get; set; }
        public virtual Partner Partner2 { get; set; }
        public virtual User User { get; set; }
        public virtual ICollection<DocumentDeliveryDetail> DocumentDeliveryDetails { get; set; }
    }
}
