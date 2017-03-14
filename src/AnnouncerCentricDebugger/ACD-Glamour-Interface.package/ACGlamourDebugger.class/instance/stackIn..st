building presentations
stackIn: composite

	(super stackIn: composite)
		selectionAct: [:each|  each selection explore] on: $i entitled: 'Explore'
