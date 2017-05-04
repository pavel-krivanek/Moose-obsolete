*XML-Parser
xmlPrefixBeforeLocalName
	"optimized"
	| i |

	i := self size.
	[i == 0]
		whileFalse: [
			((self at: i) == $:)
				ifTrue: [^ (self copyFrom: 1 to: i - 1)].
			i := i - 1].
	^ ''.