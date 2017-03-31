tests
testAttributesExcludingDeclarations
	| document   |

	document := XMLDOMParser parse: self addressBookNamespacedXML.
	self deny: document root hasAttributes.