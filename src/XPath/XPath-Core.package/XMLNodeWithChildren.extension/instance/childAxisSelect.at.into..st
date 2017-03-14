*XPath-Core-private
childAxisSelect: aNodeTest at: aPosition into: aNodeSet
	(aPosition > 0
		and: [self hasChildren
			and: [self nodes size >= aPosition]])
		ifFalse: [^ aNodeSet].

	aNodeTest isAnyNodeTest
		ifTrue: [
			aNodeSet addLast:
				(self nodes at: aPosition)]
		ifFalse: [| totalMatched nodeList |
			totalMatched := 0.
			"use to:do: with direct access for speed"
			nodeList := self nodes.
			1 to: nodeList size do: [:i | | node |
				node := nodeList at: i.
				((aNodeTest value: node)
					and: [(totalMatched := totalMatched + 1) = aPosition])
					ifTrue: [
						aNodeSet addLast: node.
						^ aNodeSet]]].
	^ aNodeSet.