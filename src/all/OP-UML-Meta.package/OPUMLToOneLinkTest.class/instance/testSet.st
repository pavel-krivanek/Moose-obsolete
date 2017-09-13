tests
testSet
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review book: book.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book