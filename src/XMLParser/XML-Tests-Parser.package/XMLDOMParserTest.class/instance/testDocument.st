tests
testDocument
	| document root |

	document := XMLDOMParser parse: self addressBookXML.
	document allNodesDo: [:each | self assert: each document == document].

	root := document root.
	root innerXML: self addressBookXML.
	document allNodesDo: [:each | self assert: each document == document].

	document removeNode: root.
	root allNodesDo: [:each | self assert: each document isNil].