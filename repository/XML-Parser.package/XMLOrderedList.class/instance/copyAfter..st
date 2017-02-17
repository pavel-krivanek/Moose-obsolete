copying
copyAfter: anObject
	| copy |

	copy := self copyEmpty.
	(self
		indexOf: anObject
		ifAbsent: [^ copy]) + 1
			to: self size
			do: [:i | copy addLast: (self at: i)].
	^ copy.