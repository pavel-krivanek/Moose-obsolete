testing
testResultClass
	
	| result |
	result := group1 difference: group2.
	self assert: (result isKindOf: MooseGroup)