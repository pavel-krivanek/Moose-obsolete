tests
testChange
	| book book2 review |
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book.
	review book: book2.
	self assert: book reviews asArray equals: #().
	self assert: book2 reviews asArray equals: {review}.
	self assert: review book equals: book2