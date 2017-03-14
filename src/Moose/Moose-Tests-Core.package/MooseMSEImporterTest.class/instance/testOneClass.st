tests
testOneClass
	| mooseModel |
	mooseModel := self readMSEStream: '((FAMIX.Class (name ''ClassA'')))' readStream.
	self assert: mooseModel entities notEmpty.
	self assert: (mooseModel allClasses collect: #name) first equals: 'ClassA'