tests
testRemoved
	| diagram el |
	diagram := OPDiagram new.
	el := OPNamedElement new.
	diagram add: el.

	diagram remove: el.
	self assert: el owner isNil