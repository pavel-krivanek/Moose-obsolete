*XPath-Core-private
descendantOrSelfAxisSelect: aNodeTest at: aPosition into: aNodeSet
	| totalMatched |

	aPosition > 0
		ifFalse: [^ aNodeSet].
	totalMatched := 0.
	self allNodesDo: [:each |
		((aNodeTest value: each)
			and: [(totalMatched := totalMatched + 1) = aPosition])
			ifTrue: [
				aNodeSet addLast: each.
				^ aNodeSet]].
	^ aNodeSet.