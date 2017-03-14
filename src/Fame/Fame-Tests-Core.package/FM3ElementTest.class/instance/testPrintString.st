running
testPrintString

	| noname |
	noname := FM3Element new.
	self shouldnt: [ noname printString ] raise: Error.
	