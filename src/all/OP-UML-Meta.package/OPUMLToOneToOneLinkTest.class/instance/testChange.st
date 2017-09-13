tests
testChange
	| review1 score1 review2 score2 |
	review1 := OPUMLTestReview new.
	score1 := OPUMLTestScore new.
	review2 := OPUMLTestReview new.
	score2 := OPUMLTestScore new.
	score1 review: review1.
	score2 review: review2.
	self assert: review1 score equals: score1.
	self assert: score1 review equals: review1.
	self assert: review2 score equals: score2.
	self assert: score2 review equals: review2.
	score1 review: review2.
	self assert: score1 review equals: review2.
	self assert: review2 score equals: score1.
	self assert: score2 review equals: nil.
	self assert: review1 score equals: nil