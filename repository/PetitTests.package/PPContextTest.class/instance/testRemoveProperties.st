tests
testRemoveProperties
	context propertyAt: #foo put: #zorg.
	context propertyAt: #bar put: #qwark.	

	self assert: (context removeProperty: #foo) = #zorg.
	self assert: (context removeProperty: #bar) = #qwark.
	
	self should: [context removeProperty: #foo] raise: Error.
	self assert: (context removeProperty: #bar ifAbsent: [ #foobar ]) = #foobar.
