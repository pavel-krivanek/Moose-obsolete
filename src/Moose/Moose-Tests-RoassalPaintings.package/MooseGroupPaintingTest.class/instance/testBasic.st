tests
testBasic

	| m |
	m := MooseGroup new.
	self assert: m symbolsUsedInName isEmpty.
	window := m viewNameCloud.
	self assert: window notNil.
	