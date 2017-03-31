tests
testBasic02

	| m |
	m := MooseGroup new.
	m add: (FAMIXClass new name: 'Hello').
	m add: (FAMIXClass new name: 'World').
	
	self assert: m symbolsUsedInName size equals: 1.
	
	window := m viewNameCloud.
	self assert: window notNil.
	