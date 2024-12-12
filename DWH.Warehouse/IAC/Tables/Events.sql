CREATE TABLE [IAC].[Events] (

	[EventKey] bigint NULL, 
	[event_name] varchar(8000) NULL, 
	[event_location] varchar(8000) NULL, 
	[event_start_date] date NULL, 
	[event_start_time] datetime2(6) NULL, 
	[event_timezone] varchar(8000) NULL
);


GO
ALTER TABLE [IAC].[Events] ADD CONSTRAINT UQ_b354614d_a86b_4201_ac51_83e07f850528 unique NONCLUSTERED ([EventKey]);