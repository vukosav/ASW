using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_BLL
{
    class ShippingInvoiceItemLinesPrintDataSource
    {
        public int No { get; set; }
        public string ProductName { get; set; }
        public string Description { get; set; }
        public int Unit { get; set; }
        public double UnitPrice { get; set; }
        public double TotalPrice { get; set; }

    }
}
