tests
testInnerXMLResetting
	| nodeWithElements |

	nodeWithElements := self newNodeWithElements.
	self
		should: [nodeWithElements firstElement innerXML: '<one><two></one></two>']
		raise: XMLWellFormednessException.
	self assert: nodeWithElements printString = self newNodeWithNodes printString.

	self
		should: [nodeWithElements firstElement innerXML: '<one>&invalid;</one>']
		raise: XMLWellFormednessException.
	self assert: nodeWithElements printString = self newNodeWithNodes printString.