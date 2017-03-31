tests
testDocument
	| nodeWithNodes document |

	nodeWithNodes := self newNodeWithNodes.
	document := nodeWithNodes document.
	nodeWithNodes allNodesDo: [:each |
		self assert: each document == document].

	document
		ifNotNil: [ | root |
			root := document root.
			document removeNodes.
			root allNodesDo: [:each |
				self assert: each document isNil]].