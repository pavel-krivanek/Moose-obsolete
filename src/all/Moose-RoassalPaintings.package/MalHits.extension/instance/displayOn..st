*Moose-RoassalPaintings-displaying
displayOn: view

	view shape label text: [:n| n printString].
	view nodes: nodes.
	view shape arrowedLine.
	view edges connectFrom: #yourself toAll: #nextNodes.
	view layout circle