accessing
comparableNodeSetWithDisjointNumberValues
	^ (self nodeSetClass newFrom:
		(self disjointNumberValues collect: [:each | each asString asXMLStringNode]))
			asXPathComparable