*XPath-Core-private
attributeAxisSelectName: anAttributeName into: aNodeSet
	| index |
	
	"If it's an attribute test for a name, we can use this to look up its
	node in constant time (if it's an XMLCachingAttirbuteList). We avoid
	#attributeNodeAt: because it matches names and local names, not names
	exactly, and #attributeValueAt: returns the value, not the node"
	(index := self attributeNodes indexOfAttribute: anAttributeName) > 0
		ifTrue: [
			aNodeSet addLast:
				(self attributeNodes at: index)].
	^ aNodeSet.