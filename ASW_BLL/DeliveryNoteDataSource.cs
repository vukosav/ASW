using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_BLL
{
    class DeliveryNoteDataSource
    {
        public string RecipientCompanyName { get; set; }
        public string RecipientAdressName { get; set; }
        public string RecipientZIPCodeCityName { get; set; }
        public string RecipientCountryName { get; set; }

        public string SenderCompanyName { get; set; }
        public string SenderAdressName { get; set; }
        public string SenderZIPCodeCityName { get; set; }
        public string SenderCountryName { get; set; }



        public string DeliveryNoteNo { get; set; }
        public string InvoiceNr { get; set; }

        public DateTime DateOfSending { get; set; }
        public string PlaceOfSending { get; set; }

        List<DeliveryNoteListItemsDataSource> Items { get; set; }
    }
}
