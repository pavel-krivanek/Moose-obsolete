tests
testRemove
	| book review |
	book := OPUMLTestBook new.
	review := OPUMLTestReview new.
	book reviews add: review.
	self assert: book reviews asArray equals: {review}.
	book reviews remove: review.
	self assert: book reviews asArray equals: #().
	self assert: review book equals: nil