tests
testPutProperties
	self assert: (context hasProperty: #foo) not.
	self assert: (context hasProperty: #bar) not.	
	
	self should: [ context propertyAt: #foo ] raise: Error.
	self assert: (context propertyAt: #foo ifAbsent: [ #bar ]) = #bar.
	
	self assert: (context propertyAt: #foo ifAbsentPut: [ #bar ]) = #bar.	
	self assert: (context hasProperty: #foo).
	self assert: (context hasProperty: #bar) not.	
	self assert: (context propertyAt: #foo) = #bar.
	
	self assert: (context propertyAt: #foo ifAbsentPut: [ #zorg ]) = #bar.	
	self assert: (context hasProperty: #foo).
	self assert: (context hasProperty: #bar) not.	
	self assert: (context propertyAt: #foo) = #bar.
	
	self assert: (context propertyAt: #foo put: #zorg) = #zorg.	
	self assert: (context hasProperty: #foo).
	self assert: (context hasProperty: #bar) not.	
	self assert: (context propertyAt: #foo) = #zorg.
	
	self should: [ context propertyAt: #bar ] raise: Error.
	self assert: (context propertyAt: #bar put: #foo) = #foo.
	self assert: (context propertyAt: #foo) = #zorg.
	self assert: (context propertyAt: #bar) = #foo.

