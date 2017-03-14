tests
testColumnDefWithStar
	self 
		parse: 'TASKRESOURCEID NUMBER(*,0) NOT NULL ENABLE'
		rule: #columnDef.