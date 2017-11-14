parsing
outerXMLForNode: aNode parsedWith: aParser
	| indexOfNode removedNodes |

	indexOfNode :=
		self nodes
			indexOf: aNode
			ifAbsent: [self errorOuterXMLForAbsentNode].
	removedNodes :=
		self nodes
			copyFrom: indexOfNode
			to: self nodes size.
	self removeNodes: removedNodes.
	[aParser
		innerXMLRootNode: self;
		parseDocument]
		on: Error
		do: [:error |
			[self nodes size >= indexOfNode]
				whileTrue: [self nodes removeLast].
			self addNodes: removedNodes.
			error pass].
	2 to: removedNodes size do: [:i |
		self addNode: (removedNodes at: i)].