tests
testEntityNamedWithType
	| group result c n |
	group := MooseGroup new.
	c := FAMIXClass new name: 'A'.
	n := FAMIXNamespace new name: 'A'.
	group add: c.
	group add: n.
	result := group entityNamed: 'A'.
	self assert: result equals: n.
	result := group entityNamed: 'A' withType: FAMIXNamespace.
	self assert: result equals: n.
	result := group entityNamed: 'A' withType: FAMIXClass.
	self assert: result equals: c