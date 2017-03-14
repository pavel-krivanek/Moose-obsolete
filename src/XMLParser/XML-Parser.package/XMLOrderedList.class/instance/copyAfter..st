copying
copyAfter: anObject
	| copy |

	copy := self copyEmpty.
	(self
		indexOf: anObject
		ifAbsent: [^ copy]) + 1
			to: self size
			do: [:i | copy addToCopyLast: (self at: i)].
	^ copy.