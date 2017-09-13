tests
testRemove
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book.
	review book: nil.
	self assert: book reviews asArray equals: #().
	self assert: review book equals: nil