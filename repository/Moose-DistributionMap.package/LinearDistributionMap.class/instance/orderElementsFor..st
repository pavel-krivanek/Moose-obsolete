rendering
orderElementsFor: aContainer

	^ (self elementsFor: aContainer) sorted: [ :a :b |
		(elementsAndPropertyValue at: a) >= (elementsAndPropertyValue at: b) ] 