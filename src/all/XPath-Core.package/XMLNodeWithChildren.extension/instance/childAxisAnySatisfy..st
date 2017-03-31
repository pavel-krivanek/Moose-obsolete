*XPath-Core-private
childAxisAnySatisfy: aNodeTest
	^ self hasChildren
		and: [self nodes anySatisfy: aNodeTest]