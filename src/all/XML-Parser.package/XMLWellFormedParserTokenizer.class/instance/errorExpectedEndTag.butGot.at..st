errors
errorExpectedEndTag: anExpectedEndTag butGot: aCharacter at: aCharacterPosition
	| receivedEndTag |

	"try to get the entire unexpected name"
	nameStream reset.
	1 to: aCharacterPosition - 1 do: [:i |
		nameStream nextPut: (anExpectedEndTag at: i)].
	"nil understands isXMLNameChar so it is not tested for"
	aCharacter isXMLNameChar
		ifTrue: [
			nameStream nextPut: aCharacter.
			[streamReader peek isXMLNameChar]
				whileTrue: [nameStream nextPut: streamReader next]].

	(receivedEndTag := nameStream contents) size > 0
		ifTrue: [
			(elementNester hasOpenElement: receivedEndTag)
				ifTrue: [self errorUnterminatedElementsInElement: receivedEndTag]
				ifFalse: [self errorTerminatingUnstartedElement: receivedEndTag]]
		ifFalse: [self errorExpectedElementName].