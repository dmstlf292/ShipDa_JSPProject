CREATE TABLE USER (
	userID        varchar(20),
	userPassword  varchar(20),
	userName  varchar(20),
	userAge  int,
	userGender varchar(20),
	userEmail  VARCHAR(50),
	userProfile varchar(50)
)COLLATE='euckr_korean_ci';



CREATE TABLE forwardersMember (
	id        varchar(20),
	password  varchar(20),
	name  varchar(20),
	email  varchar(50)
)COLLATE='euckr_korean_ci';



CREATE TABLE CHAT (
	chatID  int  auto_increment  ,
	fromID  varchar(20),
	toID  varchar(20),
	chatContent varchar(100),
	chatTime  datetime,
	chatRead int,
	PRIMARY KEY (chatID)
)COLLATE='euckr_korean_ci';




CREATE TABLE fcl (
	no               int(11) NOT NULL  auto_increment,
	departure             varchar(20) NOT NULL,
	port			varchar(20) NOT NULL,
	address			 varchar(50) ,
	transit			 varchar(50),
	arrive          varchar(50) NOT NULL,
	aport			varchar(20) NOT NULL,
	aAddress			 varchar(50),
	aTransit			 varchar(50),
	incoterms              varchar(20) ,
	item           varchar(20)     NOT NULL,
	ctype          varchar(20)      ,
	csize           varchar(20) ,
	danger			varchar(20),
	lss				 varchar(20) ,
	surcharge		varchar(20) ,
	extra			varchar(20) ,
	regdate         date  ,
	
	ref               smallint(7) ,
	pos                smallint(7) unsigned ,
	depth             smallint(7) unsigned,
	count             smallint(7) unsigned,
	client			varchar(20),
	volume 			int(255) NOT NULL,
	userID			varchar(20)  NULL,
	PRIMARY KEY ( no )
)COLLATE='euckr_korean_ci';



CREATE TABLE fclQuotation (
	fclno		 		int(11) NOT NULL  auto_increment,
	no					int   NULL  ,
	pickupRate			int   NULL  ,
	stuffingRate		int   NULL  ,
	lashingRate			int   NULL  ,
	ofRate				int   NULL  ,
	lssebs				int   NULL  ,
	customsBrokerRate	int   NULL  ,
	thcRate				int   NULL  ,
	otherRate			int   NULL  ,
	amsRate				int   NULL  ,
	vgmRate				int   NULL  ,
	handlingRate		int   NULL  ,
	won					int   NULL  ,
	usd					int   NULL  ,
	
	remarks				varchar(50)  NULL,
	oftype				varchar(20)  NULL,
	carrier			varchar(20)  NULL,
	tt				varchar(20)  NULL,
	validity		varchar(20)  NULL,
	date		varchar(20)  NULL,
	state		varchar(100)  NULL,
	id		varchar(20)  NULL,
	PRIMARY KEY ( no )
)COLLATE='euckr_korean_ci';






CREATE TABLE lcl (
	no               int(11) NOT NULL  auto_increment,
	departure             varchar(20)  NOT NULL,
	port			varchar(20) NOT NULL,
	address			 varchar(50),
	transit			 varchar(50),
	arrive          varchar(50)  NOT NULL,
	aport			varchar(20)  NOT NULL,
	aAddress			 varchar(50),
	aTransit			 varchar(50),
	incoterms           varchar(20),
	packingType			varchar(20),
	item           varchar(20)  NOT NULL,
	danger			varchar(20),
	stackable		varchar(20),
	lss				 varchar(20),
	surcharge		varchar(20),
	extra			varchar(20),
	client			varchar(20),
	volumeUnit        varchar(20) NOT NULL,
	weightUnit			 varchar(20) NOT NULL,
	regdate         date  ,
	
	
	ref               smallint(7) ,
	pos                smallint(7) unsigned ,
	depth             smallint(7) unsigned,
	count             smallint(7) unsigned,
	width			 int(255)  NOT NULL,
	llength			 int(255)  NOT NULL,
	height			 int(255)  NOT NULL,
	volume			   int(255)  NOT NULL,
	packageCount		 int(255)  NOT NULL,
	cbmCal				 int(255)  NOT NULL,
	userID			varchar(20)  NULL,
	PRIMARY KEY ( no )
)COLLATE='euckr_korean_ci';



CREATE TABLE lclQuotation (
	lclno		 		int(11) NOT NULL  auto_increment,
	no			 		int   NULL  ,
	pickupRate			int   NULL  ,
	ofRate				int   NULL  ,
	customsBrokerRate	int   NULL  ,
	blDocRate			int   NULL  ,
	consolThcRate		int   NULL  ,
	portTransferRate		int   NULL  ,
	vgmRate				int   NULL  ,
	amsHandlingRate				int   NULL  ,
	won					int   NULL  ,
	usd					int   NULL  ,
	
	remarks				varchar(50)  NULL,
	oftype				varchar(20)  NULL,
	carrier			varchar(20)  NULL,
	tt				varchar(20)  NULL,
	validity		varchar(20)  NULL,
	date		varchar(20)  NULL,
	state		varchar(100)  NULL,
	id		varchar(20)  NULL,
	PRIMARY KEY ( lclno )
)COLLATE='euckr_korean_ci';


CREATE TABLE month (
	no  int(5)  auto_increment  ,
	name   varchar(20)   NULL,
	price    int   NULL,
	PRIMARY KEY ( no )
)COLLATE='euckr_korean_ci';



CREATE TABLE paid (
	apply_num      int(11)    NOT NULL  auto_increment  ,
	paid_amount  int    NULL ,
	PRIMARY KEY ( apply_num )
)COLLATE='euckr_korean_ci';