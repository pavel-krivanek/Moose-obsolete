sources
exampleHighlightDataset

| b data colors ds |
b := RTGrapher new.

data := Array
	with: (Array with: 0->0 with: 1->1 with: 2->3 with: 3->5 with: 4->7)
	with: (Array with: 0->0 with: 1->2 with: 2->4 with: 3->16 with: 4->32).

colors := Array with: Color blue with: Color red.

data withIndexDo: [ :each :i | |c|
	c := colors at: i.
	ds := RTData new.
	ds label: c.
	ds connectColor: (c alpha: 0.5).
	ds dotShape ellipse color: (c alpha: 0.5).
	ds points: each.
	ds x: #key.
	ds y: #value.
	
	ds interaction noInteractions.
	ds interaction highlightDataset: c.

	b add: ds.
].

b legend below.
b legend addText: 'Hover over one of the lines or legend entries'.
^ b