*XPath-Tests
testFollowingNodesDo
	| nodeWithNodes |

	super testFollowingNodesDo.

	nodeWithNodes := self newNodeWithNodes.
	nodeWithNodes allNodesDo: [:each |
		self
			should: [:block | each followingNodesDo: block]
			enumerate:
				(each hasParent
					ifTrue: [
						each parent descendantNodes copyAfter:
							(each hasChildren
								ifTrue: [each descendantNodes last]
								ifFalse: [each])]
					ifFalse: [#()])].