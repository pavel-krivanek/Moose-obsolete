accessing
comparableNodeSetWithSameNumberValue
	| nodeSet |

	nodeSet := self nodeSetClass new.
	self numberValues size timesRepeat: [
		nodeSet addLast:
			self numberValues first asString asXMLStringNode].
	^ nodeSet asXPathComparable.