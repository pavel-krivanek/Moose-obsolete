tokenizing
nextXMLDeclarationOrPrologToken
	streamReader peek == $<
		ifTrue: [
			streamReader next.
			streamReader peek == $?
				ifTrue: [
					streamReader next.
					self nextPITarget
						ifNil: [^ self nextXMLDeclaration]
						ifNotNil: [:target |
							state := state prologState.
							^ self nextPIWithTarget: target]].
			state := state prologState.
			^ self nextNonPIPrologOrContentMarkupToken].

	"other prolog tokens can have whitespace before them, so the doc
	does not need to start with an '<' for them"
	state := state prologState.
	self nextPrologToken.