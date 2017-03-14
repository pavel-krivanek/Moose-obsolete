adding
addRangeFrom: aStartCharacter to: aStopCharacter
	"Adds character range from aStartCharacter to aStopCharacter inclusive
	or none if aStartCharacter > aStopCharacter. Returns self to avoid
	creating a temp collection of the added characters."

	"chars don't support to:do: (compiled inline) and using to: and do:
	separately needlessly creates a (possibly large) temp array"
	aStartCharacter asciiValue
		to: aStopCharacter asciiValue
		do: [:i | self add: (Character value: i)]