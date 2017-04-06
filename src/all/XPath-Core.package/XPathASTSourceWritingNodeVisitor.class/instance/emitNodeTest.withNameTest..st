private
emitNodeTest: aNodeTest withNameTest: aNameTestString
	(aNodeTest hasParent
		and: [aNodeTest nodeType = aNodeTest parent principalNodeType])
		ifTrue: [
			"if the node type of the node test is the principal node
			type of the axis, then it's redundant and can be omitted"
			self emitAll: aNameTestString]
		ifFalse: [
			self
				emitTypeTest: aNodeTest
				withNameTest: aNameTestString].
	^ aNodeTest