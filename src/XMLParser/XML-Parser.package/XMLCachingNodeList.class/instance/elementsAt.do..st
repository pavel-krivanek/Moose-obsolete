enumerating
elementsAt: aName do: aBlock
	| elementsWithName |

	(elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [^ self]) isCollection
		ifTrue: [elementsWithName do: aBlock]
		ifFalse: [aBlock value: elementsWithName]