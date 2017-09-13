tests
testAdded
	| diagram el |
	diagram := OPDiagram new.
	el := OPNamedElement new.

	diagram add: el.
	self assert: el owner = diagram