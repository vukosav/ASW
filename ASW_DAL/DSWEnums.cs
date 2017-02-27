using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_DAL
{
    public enum RoleLevelEnum { 
        Admin = 1, 
        Tester = 2, 
        Sales = 3, 
        Tech = 4}
    public enum PartnerTypeEnum {
        STOCK = 1, 
        Supplier = 2, 
        Customer = 3, 
        Distributor = 4, 
        Courier = 5, 
        Consignee = 6
    }
    public enum SerialMatchEnum { 
        Match = 1, 
        Missing = 2, 
        DoesntMatch = 3
    }
    public enum DeliveryTypeEnum { 
        Sale =1, 
        Sale_FujitsuReplacement = 2, 
        Demo = 3, 
        Sale_FaultySS3Replacement = 4, 
        FaultySS3Replacement =5
    }
    public enum TestStatusEnum { 
        Ready = 1, 
        Ready_OffStock = 2, 
        Faulty = 3, 
        FaultyOnAcceptance = 4, 
        FaultyReturnedToAcuant = 5
    }
    public enum DemoReturnedSoldEnum { 
        Demo =1, 
        Sold = 2, 
        Stock_returned = 3
    }
    public enum ReplacedDongleEnum {
        Yes = 1, 
        No = 2, 
        Returned = 3
    }
    public enum DocTypeEnum { 
        Packing_list = 1, 
        DeliveryNote = 2, 
        ShippingInvoice =3
    }
}
