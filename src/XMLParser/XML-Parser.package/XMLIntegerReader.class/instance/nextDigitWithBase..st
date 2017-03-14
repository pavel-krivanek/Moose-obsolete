private
nextDigitWithBase: aBase
	| asciiValue digit |

	((asciiValue := self peek asciiValue) > 0
		and: [asciiValue <= CharacterDigitValues size
			and: [(digit := CharacterDigitValues at: asciiValue) notNil
				and: [digit < aBase]]])
				ifTrue: [
					self next.
					^ digit]
				ifFalse: [^ nil]