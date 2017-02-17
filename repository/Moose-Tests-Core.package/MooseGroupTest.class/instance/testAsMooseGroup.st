tests
testAsMooseGroup
	| group |
	group := MooseGroup new.
	self assert: group asMooseGroup == group