tests
testSet
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	author books add: book.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	book2 := OPUMLTestBook new.
	author books: {book2}.
	self assert: author books asArray equals: {book2}.
	self assert: book authors asArray equals: #().
	self assert: book2 authors asArray equals: {author}