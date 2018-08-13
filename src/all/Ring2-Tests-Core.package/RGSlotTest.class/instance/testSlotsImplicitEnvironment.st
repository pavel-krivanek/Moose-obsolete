tests
testSlotsImplicitEnvironment

	| layout |
	
	layout := RGInstanceVariableSlot unnamed.
	self assert: (layout hasUnresolved: #name).
	self assert: (layout parent isLayout).
	self checkImplicitSingleClassEnvironmentOf: layout parent parent.
	
	
	
	
