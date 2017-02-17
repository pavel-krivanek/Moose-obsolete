testing
testAverageHierarchyHeight
	"
	self debug: #testAverageHierarchyHeight.
	"

	| classes average |
	classes := self model allClasses.
	self assert: classes ahh asInteger equals: 2