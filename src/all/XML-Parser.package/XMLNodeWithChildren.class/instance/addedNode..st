notifying
addedNode: aNode
	aNode parent
		ifNotNil: [:nodeParent |
			nodeParent == self
				ifFalse: [nodeParent removeNode: aNode]].
	aNode parent: self.