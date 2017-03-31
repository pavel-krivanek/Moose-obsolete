accessing
elementsAt: aName
	| elementsWithName copiedElements |

	copiedElements := self copyEmpty.
	(elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [^ copiedElements]) isCollection
		ifTrue: [
			elementsWithName do: [:each |
				copiedElements addToCopyLast: each]]
		ifFalse: [
			copiedElements addToCopyLast: elementsWithName].
	^ copiedElements.