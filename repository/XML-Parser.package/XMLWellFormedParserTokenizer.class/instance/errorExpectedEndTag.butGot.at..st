errors
errorExpectedEndTag: anExpectedEndTag butGot: aCharacter at: aStringPosition
	| receivedEndTag |

	"try to get the entire unexpected name"
	nameStream reset.
	1 to: aStringPosition - 1 do: [:i |
		nameStream nextPut: (anExpectedEndTag at: i)].
	"nil understands isXMLNameChar so it is not tested for"
	aCharacter isXMLNameChar
		ifTrue: [
			nameStream nextPut: aCharacter.
			[streamReader peek isXMLNameChar]
				whileTrue: [nameStream nextPut: streamReader next]].
	receivedEndTag := nameStream contents.

	(elementNester hasOpenElement: receivedEndTag)
		ifTrue: [self errorUnterminatedElementsInElement: receivedEndTag]
		ifFalse: [self errorTerminatingUnstartedElement: receivedEndTag]