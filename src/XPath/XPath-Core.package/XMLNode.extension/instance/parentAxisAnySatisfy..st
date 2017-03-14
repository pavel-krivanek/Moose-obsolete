*XPath-Core-private
parentAxisAnySatisfy: aNodeTest
	^ self hasParent
		and: [aNodeTest value: self parent]