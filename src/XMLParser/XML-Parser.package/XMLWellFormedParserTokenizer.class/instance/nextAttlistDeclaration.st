tokenizing - dtd
nextAttlistDeclaration
	| element defaultPragma |

	self
		expectNextAll: 'ATTLIST';
		expectSeparatorsInDeclaration.

	element := self nextName.
	[streamReader peek == $>
		or: [
			self expectSeparatorsInDeclaration.
			streamReader peek == $>]]
		whileFalse: [
			driver
				handleAttributeDeclaration: element
				name: self nextName
				type: self nextAttributeType
				defaultPragma: (defaultPragma := self nextAttributeDefaultPragma)
				defaultValue: (self nextAttributeDefaultValueForPragma: defaultPragma)].
	self expectTerminator.