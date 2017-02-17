tests
testGroupSize
	| group classes |
	classes := self twoClasses.
	group := MooseGroup withAll: classes.
	self assert: group numberOfItems equals: classes size.
	self assert: group size equals: 2