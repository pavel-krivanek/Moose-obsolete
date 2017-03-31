decoding
characterFromCodePoint: aCodePoint
	(aCodePoint notNil
		and: [aCodePoint > 0
			and: [aCodePoint <= 16r10FFFF]])
		ifTrue: [
			^ [Character value: aCodePoint]
				on: Error
				do: [:error | nil]]
		ifFalse: [^ nil]