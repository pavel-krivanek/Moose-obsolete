deprecated
addContent: aStringOrStringNode
	"will be deprecated; use #addString: instead"

	(self hasChildren
		and: [self lastNode isCoalescingStringNode])
		ifTrue: [self lastNode append: aStringOrStringNode]
		ifFalse: [self addNode:
			(aStringOrStringNode isString
				ifTrue: [self nodeFactory newStringNode: aStringOrStringNode]
				ifFalse: [aStringOrStringNode])].
	"returns self for backwards compatibility"