copying
copyAfterLast: anObject
	| copy |

	copy := self copyEmpty.
	(self
		lastIndexOf: anObject
		ifAbsent: [^ copy]) + 1
			to: self size
			do: [:i | copy addLast: (self at: i)].
	^ copy.