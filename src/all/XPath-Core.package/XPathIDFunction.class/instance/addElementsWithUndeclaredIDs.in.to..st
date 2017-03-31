invoking
addElementsWithUndeclaredIDs: anIDSet in: aRootNode to: aNodeSet
	aRootNode allElementsDo: [:each |
		each hasAttributes
			ifTrue: [
				self
					addElement: each
					withUndeclaredIDs: anIDSet
					to: aNodeSet.
				anIDSet isEmpty
					ifTrue: [^ self]]]