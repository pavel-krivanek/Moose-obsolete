*XPath-Core-private
childAxisSelect: aNodeTest into: aNodeSet
	self hasChildren
		ifTrue: [| nodeList |
			"use to:do: with direct access for speed"
			nodeList := self nodes.
			1 to: nodeList size do: [:i | | node |
				node := nodeList at: i.
				(aNodeTest value: node)
					ifTrue: [aNodeSet addLast: node]]].
	^ aNodeSet.