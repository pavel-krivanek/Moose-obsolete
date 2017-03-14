tokenizing
nextXMLTextDeclaration
	| encoding |
	
	1 to: 5 "'<?xml' size" do: [:i |
		streamReader peek == ('<?xml' at: i)
			ifFalse: [
				i > 1
					ifTrue: [
						streamReader pushBack:
							('<?xml'
								copyFrom: 1
								to: i - 1)].
				^ self].
		streamReader next].

	self expectSeparators.
	(self nextXMLVersionAttributeRequired: false) isEmpty
		ifFalse: [self expectSeparators].
	(encoding := self nextXMLEncodingAttributeRequired: true) isEmpty
		ifFalse: [self convertFromEncoding: encoding].

	streamReader skipSeparators.
	self
		expectNext: $?;
		expectTerminator.