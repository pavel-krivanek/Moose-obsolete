accessing
elementAt: aName ifAbsent: aBlock
	| elementsWithName |

	(elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [^ aBlock value]) isCollection
		ifTrue: [^ elementsWithName first]
		ifFalse: [^ elementsWithName]