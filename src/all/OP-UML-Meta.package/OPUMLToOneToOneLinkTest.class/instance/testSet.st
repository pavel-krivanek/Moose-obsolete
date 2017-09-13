tests
testSet
	| review score |
	review := OPUMLTestReview new.
	score := OPUMLTestScore new.
	review score: score.
	self assert: review score equals: score.
	self assert: score review equals: review