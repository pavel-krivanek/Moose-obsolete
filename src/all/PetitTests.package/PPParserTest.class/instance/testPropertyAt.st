testing-properties
testPropertyAt
	| parser |
	parser := PPParser new.
	self should: [ parser propertyAt: #foo ] raise: Error.
	parser propertyAt: #foo put: true.
	self assert: (parser propertyAt: #foo)