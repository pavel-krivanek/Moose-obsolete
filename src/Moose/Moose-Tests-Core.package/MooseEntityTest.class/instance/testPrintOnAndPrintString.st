tests
testPrintOnAndPrintString
	| entity stream t str ins |
	entity := MooseEntity new.
	stream := WriteStream on: String new.
	entity printOn: stream.
	self assert: stream contents equals: entity printString.
	self assert: (stream contents beginsWith: 'a MooseEntity ')