accessing
elementsAt: aName
	^ self elementsSelect: [:each | each isNamed: aName]