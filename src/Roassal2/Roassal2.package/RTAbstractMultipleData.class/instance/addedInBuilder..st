adding
addedInBuilder: aBuilder
	super addedInBuilder: aBuilder.
	aBuilder axisX noLabel; noTick.
	
	elements := RTGroup new.
	points do: [ :p | 
		| values es |
		values := metrics collect: [ :m | m rtValue: p ].
		es := barBuilder elementsOn: values.
		es doWithIndex: [ :e :index | e trachelShape color: (self colorPalette at: index) ].
		groupedElements add: es.
		elements addAll: es
		 ] separatedBy: [ elements add: ((RTBox new size: 0) elementOn: 0) ].
	self addAll: elements