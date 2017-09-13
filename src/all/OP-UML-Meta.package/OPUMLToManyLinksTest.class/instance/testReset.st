tests
testReset
	| book review review2 |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	review2 := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	book reviews: {review2}.
	self assert: book reviews asArray equals: {review2}.
	self assert: review book equals: nil.
	self assert: review2 book equals: book