using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_BLL
{
    class PackingListDataSources
    {

        public string DeliveryCompanyName { get; set; }
        public string DeliveryAdressName { get; set; }
        public string DeliveryZIPCodeCityName { get; set; }
        public string DeliveryCountryName { get; set; }

        public string PackingListRef { get; set; }
        public DateTime PackingListDate { get; set; }
        public string ShippingTerm { get; set; }
        public string Product { get; set; }
        public int Quantity { get; set; }
        public double NumberOfPackages { get; set; }
        public double Weight { get; set; }

        public string PackingListDAP { get; set; }
    }
}
