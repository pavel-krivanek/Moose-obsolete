converting
complement
	| copy |

	copy := self copyEmpty.
	0 to: 16r10FFFF do: [:i | | character |
		character := (Character value: i).
		(self includes: character)
			ifFalse: [copy add: character]].
	^ copy.