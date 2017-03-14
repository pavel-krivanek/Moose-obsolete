tests
testRootElement
	| document root  |

	document := XMLDOMParser parse: self addressBookXML.
	self assert: document class == XMLDocument.
	root := document root.
	self assert: (root class == XMLElement).

	self assert:
		(root allNodesDetect: [:each |
			each isElement
				and: [each isNamedAny: #('AddressBook' 'addressbook')]]) == root.
	self assert: (root findElementNamed: 'addressbook') == root.