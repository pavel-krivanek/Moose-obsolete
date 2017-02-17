initialize-release
initialize
	model := FMUtil default createRBModel.
	self classNamePrefix: ''.
	self defaultSuperclass: Object.	
	self skipDerivedMethods: false.