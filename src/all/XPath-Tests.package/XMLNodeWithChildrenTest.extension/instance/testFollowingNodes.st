*XPath-Tests
testFollowingNodes
	| nodeWithNodes |

	super testFollowingNodes.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each | | following |
		following := each followingNodes.
		each hasParent
			ifTrue: [
				self assert:
					following =
						(each parent descendantNodes copyAfter:
							(each hasChildren
								ifTrue: [each descendantNodes last]
								ifFalse: [each]))]
			ifFalse: [
				self assert: following isEmpty]].