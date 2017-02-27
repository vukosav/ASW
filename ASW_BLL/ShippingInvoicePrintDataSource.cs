using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_BLL
{
    class ShippingInvoicePrintDataSource
    {
        public string DeliveryCompanyName { get; set; }
        public string DeliveryAdressName { get; set; }
        public string DeliveryZIPCodeCityName { get; set; }
        public string DeliveryCountryName { get; set; }
        public string DeliveryContactName { get; set; }
        public string DeliveryAttentionName { get; set; }


        public string ConsigneeCompanyName { get; set; }
        public string ConsigneeAdressName { get; set; }
        public string ConsigneeZIPCodeCityName { get; set; }
        public string ConsigneeCountryName { get; set; }

        public DateTime Date { get; set; }

    
        public string ShippingTerm { get; set; }
        public string PaymentTerms { get; set; }
        public string InvoiceNo { get; set; }

        public double Total { get;set;}



        public string PaymentDetailsBankName { get; set; }
        public string PaymentDetailsAdressName { get; set; }
        public string PaymentDetailsAccountName { get; set; }
        public string PaymentDetailsAccountNumber { get; set; }
        public string PaymentDetailsSWIFT { get; set; }

        List<ShippingInvoiceItemLinesPrintDataSource> LineItems { get; set; }
    }
}
