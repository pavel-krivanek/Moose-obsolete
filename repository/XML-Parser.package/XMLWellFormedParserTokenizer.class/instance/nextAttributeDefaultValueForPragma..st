tokenizing - dtd
nextAttributeDefaultValueForPragma: aPragma
	| previousContext attributeValue |

	aPragma isEmpty
		ifFalse: [
			(aPragma first == $F) "FIXED"
				ifFalse: [^ ''].
			self expectSeparatorsInDeclaration].
	previousContext := context.
	context := context contentContext.
	attributeValue := self nextAttributeValue.
	context := previousContext.
	^ attributeValue.