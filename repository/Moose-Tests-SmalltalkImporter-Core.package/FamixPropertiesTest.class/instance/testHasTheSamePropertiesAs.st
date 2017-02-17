testing
testHasTheSamePropertiesAs

	| cp |
	"I should have the same entity than a copy of myself"
	self assert: (self nodeClass hasTheSamePropertiesAs: self nodeClass).

	self deny: (self nodeClass hasTheSamePropertiesAs: self nodeClass veryDeepCopy).
	"here the incoming references is different because references are not pointing to the copy obviously"
	
	cp := self model entityNamed: LANOutputServer mooseName.
	self deny: (self nodeClass hasTheSamePropertiesAs: cp).
	
	cp := self nodeClass veryDeepCopy.
	cp instVarNamed: 'state' put: (cp instVarNamed: 'state') veryDeepCopy.
	cp propertyNamed: #numberOfLinesOfCode put: 12000.  
	"This property is described as a fame property on the entity kind but not existing on the copy
	so two entities should have different properties"
	self deny: (self nodeClass hasTheSamePropertiesAs: cp).
	
	cp := self nodeClass veryDeepCopy.
	cp instVarNamed: 'state' put: (cp instVarNamed: 'state') veryDeepCopy.
	cp propertyNamed: #NOS ifAbsentPut: 12000.  
	"This property is described but it does not exist on the entity kind 
	so two entities should have different properties"
	self deny: (self nodeClass hasTheSamePropertiesAs: cp).
	