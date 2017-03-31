rendering
renderElementsFrom: node on: view
	
	view interaction menuMorphBlock: [ :element | element mooseMenuMorph ].
	view interaction nodraggable.
	view interaction forward: ROAbstractMouseDragging.
	view shape rectangle
		size: 10;
		linearRedFillColor: [ :e | elementsAndPropertyValue at: e ] within: elementsAndPropertyValue keys;
		borderColor: self baseColor.
	view nodes: (self orderElementsFor: node)