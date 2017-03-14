sources
exampleDoubleArrow

| v edges es |
v := RTView new.
edges := OrderedCollection new.

es := RTBox elementsOn: (1 to: 300).
RTGridLayout new gapSize: 30; on: es.

es do: [ :e |
	| te |
	te := RTBox element.
	te translateTo: e position + (0 @ 10).
	edges add: ((RTDoubleArrowedLine new color: Color black) edgeFrom: e to: te).
].

v addAll: edges.

v when: TRMouseMove do: [ :evt |  
	edges do: [ :edge |
		edge to translateTo: (evt positionFromCamera - edge from position) / 5 + edge from position.
	].
	v signalUpdate.
].

	^ v