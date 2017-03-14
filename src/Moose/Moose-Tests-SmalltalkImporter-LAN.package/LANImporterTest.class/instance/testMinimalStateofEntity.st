tests
testMinimalStateofEntity
	"self debug: #testMinimalStateofEntity"

	| node |
	node := self model entityNamed: LANNode mooseName.
	self assert: (node subInheritances at: 1) mooseModel equals: self model.
	self assert: (node superInheritances at: 1) mooseModel equals: self model