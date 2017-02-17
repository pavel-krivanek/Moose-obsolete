tests
testColumnDefWithEnable
	self 
		parse: 'ABLAUFID NUMBER(10, 0) NOT NULL ENABLE'
		rule: #columnDef.