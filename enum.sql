----------NomRoleLevel start--------------
INSERT INTO [ASW].[dbo].[NomRoleLevel]
           ([RoleLevelId] ,[RoleLevelName])
     VALUES
           (1 ,'Admin')
INSERT INTO [ASW].[dbo].[NomRoleLevel]
           ([RoleLevelId] ,[RoleLevelName])
     VALUES
           (2 ,'Tester')
INSERT INTO [ASW].[dbo].[NomRoleLevel]
           ([RoleLevelId] ,[RoleLevelName])
     VALUES
           (3 ,'Sales')
INSERT INTO [ASW].[dbo].[NomRoleLevel]
           ([RoleLevelId] ,[RoleLevelName])
     VALUES
           (4 ,'Tech') 
           ----------NomRoleLevel end--------------
GO

--------------NomPartnerType---------------
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (1 ,'STOCK')
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (2 ,'Supplier')
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (3 ,'Customer')
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (4 ,'Distributor')
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (5 ,'Courier')
INSERT INTO [ASW].[dbo].[NomPartnerType]
           ([PartnerTypeId]  ,[PartnerTypeName])
     VALUES
           (6 ,'Consignee') 
--------------NomPartnerType end---------------
GO
--------------NomSerialMatch end---------------
INSERT INTO [ASW].[dbo].[NomSerialMatch]
           ([SerialMatchId] ,[SerialMatchName])
     VALUES
           (1 ,'Match')
INSERT INTO [ASW].[dbo].[NomSerialMatch]
           ([SerialMatchId] ,[SerialMatchName])
     VALUES
           (2 ,'Missing')
INSERT INTO [ASW].[dbo].[NomSerialMatch]
           ([SerialMatchId] ,[SerialMatchName])
     VALUES
           (3 ,'DoesntMatch')
--------------NomSerialMatch end---------------
GO
--------------NomDeliveryType ---------------
INSERT INTO [ASW].[dbo].[NomDeliveryType]
           ([DeliveryTypeId] ,[DeliveryTypeName])
     VALUES
           (1 ,'Sale')
INSERT INTO [ASW].[dbo].[NomDeliveryType]
           ([DeliveryTypeId] ,[DeliveryTypeName])
     VALUES
           (2 ,'Sale_FujitsuReplacement')
INSERT INTO [ASW].[dbo].[NomDeliveryType]
           ([DeliveryTypeId] ,[DeliveryTypeName])
     VALUES
           (3 ,'Demo')
INSERT INTO [ASW].[dbo].[NomDeliveryType]
           ([DeliveryTypeId] ,[DeliveryTypeName])
     VALUES
           (4 ,'Sale_FaultySS3Replacement')
INSERT INTO [ASW].[dbo].[NomDeliveryType]
           ([DeliveryTypeId] ,[DeliveryTypeName])
     VALUES
           (5 ,'FaultySS3Replacement') 
GO
--------------NomDeliveryType end---------------
--------------NomTestStatus end---------------
INSERT INTO [ASW].[dbo].[NomTestStatus]
           ([TestStatusId] ,[TestStatusName])
     VALUES
           (1 ,'Ready')
INSERT INTO [ASW].[dbo].[NomTestStatus]
           ([TestStatusId] ,[TestStatusName])
     VALUES
           (2 ,'Ready_OffStock')
INSERT INTO [ASW].[dbo].[NomTestStatus]
           ([TestStatusId] ,[TestStatusName])
     VALUES
           (3 ,'Faulty')
INSERT INTO [ASW].[dbo].[NomTestStatus]
           ([TestStatusId] ,[TestStatusName])
     VALUES
           (4 ,'FaultyOnAcceptance')
INSERT INTO [ASW].[dbo].[NomTestStatus]
           ([TestStatusId] ,[TestStatusName])
     VALUES
           (5 ,'FaultyReturnedToAcuant') 
--------------NomTestStatus end---------------
GO
--------------NomDocTypeName ---------------
INSERT INTO [ASW].[dbo].[NomDocTypeName]
           ([DocTypeId] ,[DocTypeName])
     VALUES
           (1 ,'Packing_list')
INSERT INTO [ASW].[dbo].[NomDocTypeName]
           ([DocTypeId] ,[DocTypeName])
     VALUES
           (2 ,'DeliveryNote')
INSERT INTO [ASW].[dbo].[NomDocTypeName]
           ([DocTypeId] ,[DocTypeName])
     VALUES
           (3 ,'ShippingInvoice') 
--------------NomDocTypeName end---------------
GO
--------------NomDemoReturnedSold---------------
INSERT INTO [ASW].[dbo].[NomDemoReturnedSold]
           ([DemoReturnedSoldId] ,[DemoReturnedSoldName])
     VALUES
           (1 ,'Demo')
INSERT INTO [ASW].[dbo].[NomDemoReturnedSold]
           ([DemoReturnedSoldId] ,[DemoReturnedSoldName])
     VALUES
           (2 ,'Sold')
INSERT INTO [ASW].[dbo].[NomDemoReturnedSold]
           ([DemoReturnedSoldId] ,[DemoReturnedSoldName])
     VALUES
           (3 ,'Stock_returned')
GO
--------------NomDemoReturnedSold end---------------

--------------NomReplacedDongle---------------
INSERT INTO [ASW].[dbo].[NomReplacedDongle]
           ([ReplacedDongleId] ,[ReplacedDongleName])
     VALUES
           (1 ,'Yes')
INSERT INTO [ASW].[dbo].[NomReplacedDongle]
           ([ReplacedDongleId] ,[ReplacedDongleName])
     VALUES
           (2 ,'No')
INSERT INTO [ASW].[dbo].[NomReplacedDongle]
           ([ReplacedDongleId] ,[ReplacedDongleName])
     VALUES
           (3 ,'Returned')
GO
--------------NomReplacedDongle end---------------
