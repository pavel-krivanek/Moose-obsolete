rendering
renderElementsFrom: node on: view
	| elements |
	elements := RTGroup new.
	self properties
		do: [ :property | 
			| color borderColor propertyElements |
			color := self propertyColorMap at: property.
			borderColor := color blacker.
			"view interaction menu: [ :element | element mooseMenuMorph ]."
			propertyElements := RTBox new 
				borderColor: borderColor; 
				color: color; 
				elementsOn: (self elementsWithProperty: property inPart: node).
			elements addAll: propertyElements ].
	^ elements