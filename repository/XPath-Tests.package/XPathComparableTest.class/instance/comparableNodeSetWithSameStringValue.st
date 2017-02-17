accessing
comparableNodeSetWithSameStringValue
	| nodeSet |

	nodeSet := self nodeSetClass new.
	self stringValues size timesRepeat: [
		nodeSet addLast: self stringValues first asXMLStringNode].
	^ nodeSet asXPathComparable.