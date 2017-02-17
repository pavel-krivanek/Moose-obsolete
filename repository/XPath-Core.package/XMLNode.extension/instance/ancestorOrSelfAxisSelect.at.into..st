*XPath-Core-private
ancestorOrSelfAxisSelect: aNodeTest at: aPosition into: aNodeSet
	| totalMatched |

	aPosition > 0
		ifFalse: [^ aNodeSet].
	totalMatched := 0.
	self withAncestorNodesDo: [:each |
		((aNodeTest value: each)
			and: [(totalMatched := totalMatched + 1) = aPosition])
			ifTrue: [
				aNodeSet addLast: each.
				^ aNodeSet]].
	^ aNodeSet.