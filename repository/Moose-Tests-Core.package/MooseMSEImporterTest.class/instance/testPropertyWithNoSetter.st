tests
testPropertyWithNoSetter
	| mooseModel |
	mooseModel := self readMSEStream: '((FAMIX.Class (name ''ClassA'') (numberOfLinesOfCode 42)))' readStream.
	self assert: mooseModel allClasses first name equals: 'ClassA'.
	self assert: mooseModel allClasses first numberOfLinesOfCode equals: 42