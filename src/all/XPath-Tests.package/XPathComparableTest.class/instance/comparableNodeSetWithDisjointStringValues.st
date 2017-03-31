accessing
comparableNodeSetWithDisjointStringValues
	^ (self nodeSetClass newFrom:
		(self disjointStringValues collect: [:each | each asXMLStringNode]))
			asXPathComparable