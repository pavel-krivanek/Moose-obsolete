*XPath-Core-private
namespaceAxisSelect: aNamespaceNodeTest into: aNodeSet
	self hasNamespaceNodes
		ifTrue: [
			self namespaceNodesDo: [:each |
				(aNamespaceNodeTest value: each)
					ifTrue: [aNodeSet addLast: each]]].
	^ aNodeSet.