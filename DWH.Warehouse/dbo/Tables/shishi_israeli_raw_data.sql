CREATE TABLE [dbo].[shishi_israeli_raw_data] (

	[order_id] bigint NULL, 
	[order_date] datetime2(6) NULL, 
	[attendee_first_name] varchar(8000) NULL, 
	[attendee_last_name] varchar(8000) NULL, 
	[attendee_email] varchar(8000) NULL, 
	[phone_number] varchar(8000) NULL, 
	[purchaser_city] varchar(8000) NULL, 
	[purchaser_state] varchar(8000) NULL, 
	[purchaser_country] varchar(8000) NULL, 
	[event_name] varchar(8000) NULL, 
	[event_id] bigint NULL, 
	[event_start_date] date NULL, 
	[event_start_time] datetime2(6) NULL, 
	[event_timezone] varchar(8000) NULL, 
	[event_location] varchar(8000) NULL, 
	[ticket_quantity] int NULL, 
	[ticket_tier] varchar(8000) NULL, 
	[ticket_type] varchar(8000) NULL, 
	[currency] varchar(8000) NULL, 
	[ticket_price] float NULL, 
	[buyer_first_name] varchar(8000) NULL, 
	[buyer_last_name] varchar(8000) NULL, 
	[buyer_email] varchar(8000) NULL
);

