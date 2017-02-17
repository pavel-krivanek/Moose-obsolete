tokenizing
nextXMLDeclaration
	| version encoding |

	self expectSeparators.
	version := self nextXMLVersionAttributeRequired: true.
	streamReader peek == $?
		ifFalse: [self expectSeparators].
	(encoding := self nextXMLEncodingAttributeRequired: false) isEmpty
		ifFalse: [
			self convertFromEncoding: encoding.
			streamReader peek == $?
				ifFalse: [self expectSeparators]].
	driver
		handleXMLVersion: version
		encoding: encoding
		standalone: self nextXMLStandaloneAttribute.
	streamReader skipSeparators.
	self
		expectNext: $?;
		expectTerminator.

	context := context prologContext.