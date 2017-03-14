private
cachedElementsByNameAt: aName addLast: anElement
	| elementsWithName |

	elementsWithName :=
		self cachedElementsByName
			at: aName
			ifAbsent: [
				self cachedElementsByName at: aName put: anElement.
				^ self].

	 elementsWithName isCollection
		ifTrue: [elementsWithName addLast: anElement]
		ifFalse: [
			self cachedElementsByName
				at: aName
				put: (OrderedCollection with: elementsWithName with: anElement)].