tests
testSet2
	| author book author2 |
	author := OPUMLTestAuthor new.
	book := OPUMLTestBook new.
	book authors add: author.
	self assert: author books asArray equals: {book}.
	self assert: book authors asArray equals: {author}.
	author2 := OPUMLTestAuthor new.
	book authors: {author2}.
	self assert: author books asArray equals: #().
	self assert: author2 books asArray equals: {book}.
	self assert: book authors asArray equals: {author2}