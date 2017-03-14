tests
testColumnDefComplex
	self 
		parse: '  IsFilledRectangle CHAR(1) DEFAULT ''N'' NOT NULL CHECK(IsFilledRectangle in (''Y'',''N''))'
		rule: #columnDef.