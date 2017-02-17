tests
testAsXMLEscapedString
	| stringNode |

	stringNode := self nodeClass string: self markupString.
	self	
		assert: stringNode string = self markupString;
		deny: stringNode string = self escapedString;
		assert: stringNode asXMLEscapedString = self escapedString.