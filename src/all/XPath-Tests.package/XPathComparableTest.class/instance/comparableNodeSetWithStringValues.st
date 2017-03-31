accessing
comparableNodeSetWithStringValues
	^ (self nodeSetClass newFrom:
		(self stringValues collect: [:each | each asXMLStringNode]))
			asXPathComparable