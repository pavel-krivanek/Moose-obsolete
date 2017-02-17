testing-properties
testPropertyAtIfAbsentPut
	| parser |
	parser := PPParser new.
	self assert: (parser propertyAt: #foo ifAbsentPut: [ true ]).
	self assert: (parser propertyAt: #foo ifAbsentPut: [ false ])