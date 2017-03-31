tests
testOnePrimitiveType
	| mooseModel |
	mooseModel := self readMSEStream: '((FAMIX.PrimitiveType (name ''int'')))' readStream.
	self assert: mooseModel entities notEmpty.
	self assert: (mooseModel allPrimitiveTypes collect: #name) first equals: 'int'