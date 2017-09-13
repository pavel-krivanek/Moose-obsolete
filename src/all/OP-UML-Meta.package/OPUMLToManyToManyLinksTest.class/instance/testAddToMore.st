tests
testAddToMore
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	book2 authors add: author.
	self assert: book authors asArray equals: {author}.
	self assert: book2 authors asArray equals: {author}