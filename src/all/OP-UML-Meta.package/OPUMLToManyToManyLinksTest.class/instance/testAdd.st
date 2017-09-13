tests
testAdd
	| author book |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}