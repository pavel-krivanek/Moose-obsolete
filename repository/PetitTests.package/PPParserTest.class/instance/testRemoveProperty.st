testing-properties
testRemoveProperty
	| parser |
	parser := PPParser new.
	self should: [ parser removeProperty: #foo ] raise: Error.
	parser propertyAt: #foo put: true.
	self assert: (parser removeProperty: #foo)