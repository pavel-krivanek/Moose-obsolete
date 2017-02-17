construction
maybeAppendChild: aNode

	"Creates layers of concepts for all concepts except top and bottom"
	[self layer < aNode layer] assert.
	(self hasDescendant: aNode)
		ifFalse:
			[(aNode concept intent allMask: self concept intent)
				ifTrue: [self addDescendant: aNode]]