using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ASW_DAL
{
    public enum RoleLevelEnum { Admin, Tester, Sales, Tech }
    public enum PartnerTypeEnum { STOCK, Supplier, Customer, Distributor, Courier, Consignee }
    public enum SerialMatchEnum { Match, Missing, DoesntMatch }
    public enum DeliveryTypeEnum { Sale, Sale_FujitsuReplacement, Demo, Sale_FaultySS3Replacement, FaultySS3Replacement }
    public enum TestStatusEnum { Ready, Ready_OffStock, Faulty, FaultyOnAcceptance, FaultyReturnedToAcuant }
    public enum DemoReturnedSoldEnum { Demo, Sold, Stock_returned }
    public enum ReplacedDongleEnum { Yes, No, Returned }
    public enum DocTypeEnum { Packing_list, DeliveryNote, ShippingInvoice }
}
