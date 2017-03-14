private
cachedElementsByNameAt: aName remove: anElement
	| elementsWithName |

	(elementsWithName := self cachedElementsByName at: aName) isCollection
		ifTrue: [
			elementsWithName remove: anElement.
			elementsWithName isEmpty
				ifTrue: [self cachedElementsByName removeKey: aName]]
		ifFalse: [self cachedElementsByName removeKey: aName]