create table fire
(
	OBJECTID int Primary Key,
	YEAR_ int,
	STATE char(2),
	AGENCY varchar,
	UNIT_ID varchar,
	INC_NUM int,
	ALARM_DATE date,
	CONT_DATE date,
	CAUSE int,
	COMMENTS varchar,
	REPORT_AC int,
	GIS_ACRES float,
	C_METHOD int,
	OBJECTIVE int,
	FIRE_NUM int,
	Shape__Area	float,
	Shape__Length float
);

create table draught
(
	MapDate	bigint Primary Key,
	StateAbbreviation	char(2),
	None int,	
	D0	float,
	D1	float,
	D2	float,
	D3 float,
	D4	float,
	ValidStart	date,
	ValidEnd	date,
	StatisticFormatID int
);


create table DraughtFire
(
	DF_ID int Primary Key,
	OBJECTID int,
	YEAR_ int,
	STATE char(2),
	AGENCY varchar,
	UNIT_ID varchar,
	INC_NUM int,
	ALARM_DATE date,
	CONT_DATE date,
	CAUSE int,
	COMMENTS varchar,
	REPORT_AC int,
	GIS_ACRES float,
	C_METHOD int,
	OBJECTIVE int,
	FIRE_NUM int,
	Shape__Area	float,
	Shape__Length float,

	MapDate	bigint Primary Key,
	StateAbbreviation	char(2),
	--None int,                          *** DELETED ****	
	D0	float,
	D1	float,
	D2	float,
	D3      float,
	D4	float,
	ValidStart	date,
	ValidEnd	date
	--StatisticFormatID int              *** DELETED ****
);

select * from fire;
select * from draught;
select * from DraughtFire;