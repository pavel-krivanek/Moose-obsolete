tests
testDocument
	| parser document root |

	parser := XMLDOMParser on: self addressBookXML.
	self assert: parser document isNil.

	document := parser parseDocument.
	self assert: parser document == document.

	parser on: self addressBookXML.
	self assert: parser document isNil.

	document allNodesDo: [:each |
		self assert: each document == document].

	root := document root.
	root innerXML: self addressBookXML.
	document allNodesDo: [:each |
		self assert: each document == document].

	document removeNode: root.
	root allNodesDo: [:each |
		self assert: each document isNil].