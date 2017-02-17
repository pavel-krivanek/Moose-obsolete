removing
removeAttribute: aName
	^ (self remove: (self attributeNodesByName at: aName)) value