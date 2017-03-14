tests
testOuterXMLForNodeResetting
	| nodeWithElements root |

	nodeWithElements := self newNodeWithElements.
	root := nodeWithElements firstElement.
	self
		should: [
			root
				outerXML: '<one><two></one></two>'
				forNode: root firstNode]
		raise: XMLWellFormednessException.
	self assert: nodeWithElements printString = self newNodeWithNodes printString.

	self
		should: [
			root
				outerXML: '<one>&invalid;</one>'
				forNode: root firstNode]
		raise: XMLWellFormednessException.
	self assert: nodeWithElements printString = self newNodeWithNodes printString.

	self
		should: [
			root
				outerXML: '<one />'
				forNode: self nodeClass new]
		raise: XMLDOMException.
	self assert: nodeWithElements printString = self newNodeWithNodes printString.