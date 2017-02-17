tests
testInheritanceReification 
	
	|inheritances|
	inheritances := self model allInheritanceDefinitions.
	self assert: inheritances isEmpty not.
	inheritances do: 
			[:each |  
			self assert: (each superclass isKindOf: FAMIXClass). 
			self assert: (each subclass isKindOf: FAMIXClass)]