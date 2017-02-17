accessing
elementsAt: aName
	| elementsWithName copiedElements |

	copiedElements := self copyEmpty.
	(elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [^ copiedElements]) isCollection
		ifTrue: [copiedElements addAll: elementsWithName]
		ifFalse: [copiedElements addLast: elementsWithName].
	^ copiedElements.