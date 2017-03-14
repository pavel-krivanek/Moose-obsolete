notifying
renamedElement: anElement from: anOldName to: aNewName
	| oldPrefix index |

	self
		cachedElementsByNameAt: anOldName
		remove: anElement.
	(oldPrefix := anOldName xmlPrefixBeforeLocalName) notEmpty
		ifTrue: [
			self
				cachedElementsByNameAt: (anOldName xmlLocalNameAfterPrefix: oldPrefix)
				remove: anElement].
	index := self indexOf: anElement.
	self
		cachedElementsByNameAt: anElement name
		add: anElement
		beforeNextAfterIndex: index.
	anElement hasPrefix
		ifTrue: [
			self
				cachedElementsByNameAt: anElement localName
				add: anElement
				beforeNextAfterIndex: index].