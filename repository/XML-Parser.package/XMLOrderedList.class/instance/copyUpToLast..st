copying
copyUpToLast: anObject
	| copy |

	copy := self copyEmpty.
	1
		to:
			(self
				lastIndexOf: anObject
				ifAbsent: [collection size + 1]) - 1
		do: [:i | copy addLast: (self at: i)].
	^ copy.