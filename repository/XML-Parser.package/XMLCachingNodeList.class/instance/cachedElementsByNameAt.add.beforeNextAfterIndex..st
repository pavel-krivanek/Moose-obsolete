private
cachedElementsByNameAt: aName add: anElement beforeNextAfterIndex: anIndex
	| elementAfter elementsWithName |

	(elementAfter :=
		self
			findElementAfterIndex: anIndex
			named: aName)
		ifNil: [
			^ self
				cachedElementsByNameAt: aName
				addLast: anElement].

	(elementsWithName := self cachedElementsByName at: aName) isCollection
		ifTrue: [elementsWithName add: anElement before: elementAfter]
		ifFalse: [
			self cachedElementsByName
				at: aName
				put: (OrderedCollection with: anElement with: elementAfter)].