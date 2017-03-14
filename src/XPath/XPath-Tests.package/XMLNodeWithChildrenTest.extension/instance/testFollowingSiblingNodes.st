*XPath-Tests
testFollowingSiblingNodes
	| nodeWithNodes |

	super testFollowingSiblingNodes.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each | | followingSiblings |
		followingSiblings := each followingSiblingNodes.
		each hasParent
			ifTrue: [
				self assert:
					followingSiblings =
						(each parent nodes copyAfter: each)]
			ifFalse: [
				self assert: followingSiblings isEmpty]].