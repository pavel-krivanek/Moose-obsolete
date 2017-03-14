tests
testPropagate

	| classesToAnalyze c b2 ds es |
	classesToAnalyze := TRShape withAllSubclasses.
	c := RTComposer new.
	c gap: 35.

	"-------"
	b2 := RTGrapher new.
	b2 view: c view.
	b2 extent: 200 @ 150.
	ds := RTData new.
	ds interaction popup.
	ds points: #(1 2 3).
	b2 add: ds.
	b2 build.
	c group: #stat.

	"-------"

	b2 := RTGrapher new.
	b2 view: c view.
	b2 extent: 200 @ 150.
	ds := RTData new.
	ds interaction popup.
	ds points: #(1 2 3).
	b2 add: ds.
	b2 build.
	c group: #pie.

	"-------"
	c layout: RTGridLayout new.
	c propagateHighlightToAll.

	es := c view elementsFromModel: 1.
	self assert: es size equals: 2.
	self assert: (es collect: [ :e | e position y ]) asSet size equals: 1