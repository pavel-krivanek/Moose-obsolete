tests
testRemove
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	author books remove: book.
	self assert: author books asArray equals: #().
	self assert: book authors asArray equals: #()