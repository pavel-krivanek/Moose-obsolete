*XPath-Core-private
attributeAxisSelect: anAttributeNodeTest at: aPosition into: aNodeSet
	(aPosition > 0
		and: [self hasAttributes
			and: [self attributeNodes size >= aPosition]])
		ifFalse: [^ aNodeSet].

	anAttributeNodeTest isAnyNodeTest
		ifTrue: [
			aNodeSet addLast:
				(self attributeNodes at: aPosition)]
		ifFalse: [
			anAttributeNodeTest isAttributeNodeTestForName
				ifTrue: [
					"only one attribute can have this exact name"
					aPosition = 1
						ifFalse: [^ aNodeSet].

					"If it's an attribute test for a name, we can use this
					to look up its node in constant time (if the node list
					is caching). We avoid #attributeNodeAt: because it matches
					names and local names, not names exactly, and
					#attributeValueAt: returns the value not the node"
					(self attributeNodes at:
						(self attributeNodes indexOfAttribute:
							anAttributeNodeTest name))
						ifNotNil: [:attributeNode |
							aNodeSet addLast: attributeNode]]
				ifFalse: [| totalMatched |
					totalMatched := 0.
					self attributeNodesDo: [:each |
						((anAttributeNodeTest value: each)
							and: [(totalMatched := totalMatched + 1) = aPosition])
							ifTrue: [
								aNodeSet addLast: each.
								^ aNodeSet]]]].
	^ aNodeSet.