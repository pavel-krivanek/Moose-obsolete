lists
listDoubleBlanks
	^
		(
			((quoteDedent not, (quote / space) star, lineEnd) nonEmpty),
			((quoteDedent not, (quote / space) star, lineEnd) nonEmpty)
		)