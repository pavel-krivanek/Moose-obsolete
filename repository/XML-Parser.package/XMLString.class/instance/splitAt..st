splitting/merging
splitAt: anOffset
	| newNode |

	newNode := self copy.
	self replaceFrom: anOffset to: self size with: ''.
	newNode replaceFrom: 1 to: anOffset - 1 with: ''.

	self hasParent
		ifTrue: [self parent addNode: newNode after: self].

	^ newNode.