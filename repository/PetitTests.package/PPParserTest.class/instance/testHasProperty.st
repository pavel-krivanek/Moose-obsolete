testing-properties
testHasProperty
	| parser |
	parser := PPParser new.
	self deny: (parser hasProperty: #foo).
	parser propertyAt: #foo put: 123.
	self assert: (parser hasProperty: #foo)