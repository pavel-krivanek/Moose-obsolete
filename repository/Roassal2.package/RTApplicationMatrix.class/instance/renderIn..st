hooks
renderIn: aView

	| cells el elementsAsGroup itemsPerCell rowElements  |
	cells := OrderedCollection new.
	
	"First line"
	cells add: (RTLabel elementOn: 'AppMatrix').
	self columns do: [ :cName | 
		el := RTLabel elementOn: cName.
		view add: el.
		cells add: el.
	].
	
	self rows do: [ :row |
		el := RTLabel elementOn: row.
		view add: el.
		cells add: el.
		
		rowElements := RTGroup new.
		self columns do: [ :column |
			itemsPerCell := self itemsAtRow: row andColumn: column.
			
			"elementsAsGroup := ((RTBox new height: 20; width: 200) + (RTLabel new text: #itemName)) elementsOn: itemsPerCell."
			elementsAsGroup := self elementsOn: itemsPerCell.
		
			view addAll: elementsAsGroup.
			RTVerticalLineLayout new gapSize: 1; on: elementsAsGroup.
			cells add: elementsAsGroup.
			rowElements addAll: elementsAsGroup.
		].
	].
	RTCellLayout new lineItemsCount: self numberOfColumns + 1; on: cells.
	