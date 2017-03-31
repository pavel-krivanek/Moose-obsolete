testing-properties
testRemovePropertyIfAbsent
	| parser |
	parser := PPParser new.
	self assert: (parser removeProperty: #foo ifAbsent: [ true ]).
	parser propertyAt: #foo put: true.
	self assert: (parser removeProperty: #foo ifAbsent: [ false ])