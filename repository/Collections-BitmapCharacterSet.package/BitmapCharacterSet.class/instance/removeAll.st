removing
removeAll
	"empties but preserves the capacity"

	1 to: byteCharacters size do: [:i |
		byteCharacters
			at: i
			put: false].
	wideCharacters
		ifNotNil: [
			1 to: wideCharacters size do: [:i |
				wideCharacters
					at: i
					put: 0]].
	tally := 0.