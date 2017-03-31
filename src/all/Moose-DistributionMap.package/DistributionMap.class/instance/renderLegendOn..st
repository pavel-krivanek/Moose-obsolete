rendering
renderLegendOn: view
"	view
		nodes: self properties
		forEach: [ :each | 
			| color |
			(view shape rectangle)
				fillColor: (color := self propertyColorMap at: each);
				borderColor: color blacker;
				width: 10;
				height: 10.
			view interaction nodraggable.
			view interaction forward: ROAbstractMouseDragging.
			view node: each.
			view shape label.
			view interaction nodraggable.
			view interaction forward: ROAbstractMouseDragging.
			view node: each asString.
			view horizontalLineLayout ]."