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
							context := context prologContext.
							^ self nextPIWithTarget: target]].
			context := context prologContext.
			^ self nextNonPIPrologOrContentMarkupToken].

	"other prolog tokens can have whitespace before them, so the doc
	does not need to start with an < for them"
	context := context prologContext.
	self nextPrologToken.