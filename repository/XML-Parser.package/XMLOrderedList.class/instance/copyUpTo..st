copying
copyUpTo: anObject
	| copy |

	copy := self copyEmpty.
	1
		to:
			(self
				indexOf: anObject
				ifAbsent: [self size + 1]) - 1
		do: [:i | copy addLast: (self at: i)].
	^ copy.