enumerating
byteCharactersDo: aBlock
	1 to: byteCharacters size do: [:i |
		(byteCharacters at: i)
			ifTrue: [aBlock value: (Character value: i - 1)]]