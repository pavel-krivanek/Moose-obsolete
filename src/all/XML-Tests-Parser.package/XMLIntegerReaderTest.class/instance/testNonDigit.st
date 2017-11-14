tests
testNonDigit
	2 to: self maxBase do: [:base | | digitInterval letterInterval uppercaseLetterInterval |
		base > 10
			ifTrue: [
				digitInterval := $0 asciiValue to: $9 asciiValue.
				letterInterval := $a asciiValue to: $a asciiValue + (base - 11).
				uppercaseLetterInterval := $A asciiValue to: $A asciiValue + (base - 11)]
			ifFalse: [
				digitInterval := $0 asciiValue to: $0 asciiValue + base - 1.
				letterInterval := #().
				uppercaseLetterInterval := #()].
		0 to: 256 do: [:each | | char reader |
			char := each asCharacter.
			reader := XMLIntegerReader on: (self newStreamOn: char asString).
			((digitInterval includes: each)
				or: [(letterInterval includes: each)
					or: [uppercaseLetterInterval includes: each]])
				ifTrue: [
					self
						assert: (reader nextIntegerWithBase: base) notNil;
						assert: reader atEnd]
				ifFalse: [
					self
						assert: (reader nextIntegerWithBase: base) isNil;
						deny: reader atEnd;
						assert: reader next = char;
						assert: reader atEnd]]]