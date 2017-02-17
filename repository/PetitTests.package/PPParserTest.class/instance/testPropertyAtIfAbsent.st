testing-properties
testPropertyAtIfAbsent
	| parser |
	parser := PPParser new.
	self assert: (parser propertyAt: #foo ifAbsent: [ true ]).
	parser propertyAt: #foo put: true.
	self assert: (parser propertyAt: #foo ifAbsent: [ false ])