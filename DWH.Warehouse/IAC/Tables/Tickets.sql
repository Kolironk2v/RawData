CREATE TABLE [IAC].[Tickets] (

	[TicketKey] bigint NULL, 
	[ticket_type] varchar(8000) NULL, 
	[ticket_price] decimal(5,2) NULL, 
	[currency] varchar(8000) NULL, 
	[description] varchar(1) NOT NULL
);


GO
ALTER TABLE [IAC].[Tickets] ADD CONSTRAINT UQ_a3cf1654_d8b0_4753_9ecf_cdd434a6b794 unique NONCLUSTERED ([TicketKey]);