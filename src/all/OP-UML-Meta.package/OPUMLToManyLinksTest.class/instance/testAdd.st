tests
testAdd
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	self assert: review book equals: book