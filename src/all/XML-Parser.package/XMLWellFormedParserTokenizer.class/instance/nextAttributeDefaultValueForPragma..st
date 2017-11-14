tokenizing - dtd
nextAttributeDefaultValueForPragma: aPragma
	| previousState attributeValue |

	aPragma isEmpty
		ifFalse: [
			(aPragma first == $F) "FIXED"
				ifFalse: [^ ''].
			self expectSeparatorsInDeclaration].
	previousState := state.
	state := state contentState.
	attributeValue := self nextAttributeValue.
	state := previousState.
	^ attributeValue.