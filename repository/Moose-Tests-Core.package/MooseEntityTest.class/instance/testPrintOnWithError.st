tests
testPrintOnWithError
	| entity stream cls |
	cls := Class new
		superclass: MooseEntity;
		setFormat: MooseEntity format;
		classLayout: MooseEntity classLayout copy;
		yourself.
	cls compileSilently: 'mooseName   ^ 1/0'.
	entity := cls new.
	stream := WriteStream on: String new.
	entity printOn: stream.
	self
		assert: (stream contents endsWith: 'Error printing the object''')