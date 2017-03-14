private
onLineBreak: aCharacterOrString join: aLineCollection
	| printedFirstLine |

	"avoid join: for portability"
	printedFirstLine := false.
	^ String streamContents: [:stream |
		aLineCollection do: [:each |
			printedFirstLine
				ifTrue: [stream nextPutAll: aCharacterOrString asString]
				ifFalse: [printedFirstLine := true].
			stream nextPutAll: each]]