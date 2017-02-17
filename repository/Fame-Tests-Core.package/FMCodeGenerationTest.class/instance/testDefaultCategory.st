running
testDefaultCategory
	| gen |
	gen := FMDefaultCodeGenerator new.
	gen defaultCategory isNil should beTrue.
	gen defaultCategory: 'Fame-Example'.
	gen defaultCategory should = 'Fame-Example'