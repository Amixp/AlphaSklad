USE [asklad_test]
GO
 

alter TABLE [dbo].[SaleLog] add	[ItemId] [bigint] NULL
GO
CREATE NONCLUSTERED INDEX [IX_SaleLog] ON [dbo].[SaleLog]
(	[ItemId] ASC)
GO

