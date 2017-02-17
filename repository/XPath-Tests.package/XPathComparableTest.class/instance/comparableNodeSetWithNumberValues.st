accessing
comparableNodeSetWithNumberValues
	^ (self nodeSetClass newFrom:
		(self numberValues collect: [:each | each asString asXMLStringNode]))
			asXPathComparable