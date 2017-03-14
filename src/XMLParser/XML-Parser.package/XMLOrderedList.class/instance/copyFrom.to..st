copying
copyFrom: aStart to: anEnd
	| copy |

	copy := self copyEmpty.
	(aStart max: 1)
		to: (anEnd min: self size)
		do: [:i | copy addToCopyLast: (self at: i)].
	^ copy.