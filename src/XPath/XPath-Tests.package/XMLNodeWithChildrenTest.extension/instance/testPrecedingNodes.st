*XPath-Tests
testPrecedingNodes
	| nodeWithNodes |

	super testPrecedingNodes.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each | | preceding |
		preceding := each precedingNodes.
		each hasParent
			ifTrue: [
				self assert:
					preceding =
						(each parent descendantNodes copyUpTo: each) reversed]
			ifFalse: [
				self assert: preceding isEmpty]].