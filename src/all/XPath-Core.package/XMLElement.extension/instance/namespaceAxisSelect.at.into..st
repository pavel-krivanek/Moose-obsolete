*XPath-Core-private
namespaceAxisSelect: aNamespaceNodeTest at: aPosition into: aNodeSet
	| totalMatched |

	(self hasNamespaces
		and: [aPosition > 0])
		ifFalse: [^ aNodeSet].
	totalMatched := 0.
	self namespaceNodesDo: [:each |
		((aNamespaceNodeTest value: each)
			and: [(totalMatched := totalMatched + 1) = aPosition])
			ifTrue: [
				aNodeSet addLast: each.
				^ aNodeSet]].
	^ aNodeSet.