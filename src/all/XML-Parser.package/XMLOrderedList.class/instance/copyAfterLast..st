copying
copyAfterLast: anObject
	| copy |

	copy := self copyEmpty.
	(self
		lastIndexOf: anObject
		ifAbsent: [^ copy]) + 1
			to: self size
			do: [:i | copy addToCopyLast: (self at: i)].
	^ copy.