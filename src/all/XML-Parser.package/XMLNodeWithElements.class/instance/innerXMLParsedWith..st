parsing
innerXMLParsedWith: aParser
	| removedNodes |

	removedNodes := self nodes asArray.
	self removeNodes.
	[aParser
		innerXMLRootNode: self;
		parseDocument]
		on: Error
		do: [:error |
			self
				removeNodes;
				addNodes: removedNodes.
			error pass].