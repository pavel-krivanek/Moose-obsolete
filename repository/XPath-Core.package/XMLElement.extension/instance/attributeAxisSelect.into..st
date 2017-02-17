*XPath-Core-private
attributeAxisSelect: anAttributeNodeTest into: aNodeSet
	self hasAttributes
		ifTrue: [
			anAttributeNodeTest isAttributeNodeTestForName
				ifTrue: [
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
				ifFalse: [
					self attributeNodesDo: [:each |
						(anAttributeNodeTest value: each)
							ifTrue: [aNodeSet addLast: each]]]].
	^ aNodeSet.