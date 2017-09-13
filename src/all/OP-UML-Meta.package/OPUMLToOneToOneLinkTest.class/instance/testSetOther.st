tests
testSetOther
	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestScore new.
	score review: review.
	self assert: review score equals: score.
	self assert: score review equals: review