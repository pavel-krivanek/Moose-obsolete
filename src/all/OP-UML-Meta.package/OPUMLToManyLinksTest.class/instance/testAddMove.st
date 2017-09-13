tests
testAddMove
	| book book2 review |
	book := OPUMLTestBook new.
	book2 := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	book2 reviews add: review.
	self assert: book reviews asArray equals: #().
	self assert: book2 reviews asArray equals: {review}.
	self assert: review book equals: book2