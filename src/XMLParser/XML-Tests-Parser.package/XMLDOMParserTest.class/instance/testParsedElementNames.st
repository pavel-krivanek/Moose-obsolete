tests
testParsedElementNames
	| document |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	self assert:
		document elementNames =
			(document elements collect: [:each | each name ]).

	document allElementsDo: [:element |
		self assert:
			element elementNames =
				(element elements collect: [:each | each name])].