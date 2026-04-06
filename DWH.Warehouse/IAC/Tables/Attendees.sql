CREATE TABLE [IAC].[Attendees] (

	[AttendeeKey] bigint NULL, 
	[order_id] bigint NULL, 
	[attendee_first_name] varchar(8000) NULL, 
	[attendee_last_name] varchar(8000) NULL, 
	[attendee_email] varchar(8000) NULL, 
	[phone_number] varchar(8000) NULL, 
	[purchaser_city] varchar(8000) NULL, 
	[purchaser_country] varchar(8000) NULL
);


GO
ALTER TABLE [IAC].[Attendees] ADD CONSTRAINT UQ_67181fa5_8d91_4d76_8462_fcaa66816ca6 unique NONCLUSTERED ([AttendeeKey]);