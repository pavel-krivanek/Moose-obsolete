testing
includesRangeFrom: aStartCharacter to: aStopCharacter
	"Tests for character range from aStartCharacter to aStopCharacter
	inclusive. Always returns true if aStartCharacter > aStopCharacter."

	"chars don't support to:do: (compiled inline) and using to: and do:
	separately needlessly creates a (possibly large) temp array"
	aStartCharacter asciiValue
		to: aStopCharacter asciiValue
		do: [:i |
			(self includes: (Character value: i))
				ifFalse: [^ false]].
	^ true.