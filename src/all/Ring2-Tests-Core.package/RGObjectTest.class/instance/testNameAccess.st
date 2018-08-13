tests
testNameAccess
	
	| def | 
	
	"we cannot test RGObject directly here"
	def := RGClass named: #SomeDefinition.
	self assert: (def asRGDefinition == def).
	self assert: def name equals: #SomeDefinition.
	self assert: def fullName equals: #SomeDefinition.
	def name: #NewName.
	self assert: def name equals: #NewName.
	self assert: def fullName equals: #NewName.
	
	
	