tests
testFullCopy

	| def fullCopy | 
	
	"we cannot test RGObject directly here"
	def := RGClass named: #SomeDefinition.
	
	fullCopy := def fullCopy.
	self assert: (fullCopy ~~ def).
	self assert: fullCopy name equals: def name.
	
	