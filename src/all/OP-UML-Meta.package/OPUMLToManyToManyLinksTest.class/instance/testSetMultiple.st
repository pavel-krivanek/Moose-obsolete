tests
testSetMultiple
	| author book book2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	author
		books:
			{book.
			book2}.
	self
		assert: author books asArray
		equals:
			{book.
			book2}.
	self assert: book authors asArray equals: {author}.
	self assert: book2 authors asArray equals: {author}