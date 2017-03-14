*XPath-Tests
testPrecedingSiblingNodes
	| nodeWithNodes |

	super testPrecedingSiblingNodes.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each | | precedingSiblings |
		precedingSiblings := each precedingSiblingNodes.
		each hasParent
			ifTrue: [
				self assert:
					precedingSiblings =
						(each parent nodes copyUpTo: each) reversed]
			ifFalse: [
				self assert: precedingSiblings isEmpty]].