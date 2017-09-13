tests
testCreate
	| book |
	book := OPUMLTestBook new.
	self assert: book reviews owner equals: book.
	self assert: book reviews oppositeSelector equals: #book: