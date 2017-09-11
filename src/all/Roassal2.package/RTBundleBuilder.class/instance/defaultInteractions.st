default
defaultInteractions
	| hl uhl set |
	set := [ :e :c :v |
		e trachelShape color: c.
		e isEdge ifTrue: [e trachelShape width: v ] ].
	hl := [ :e :c |
		(e attributes includesKey: #oc)
			ifFalse: [ e attributes at: #oc put: e trachelShape color ].
		set value: e value: c value: 2].
	uhl := [ :e | | c |
		(e attributes includesKey: #oc) ifTrue: [ 
			c := e attributes at: #oc.
			set value: e value: c value: 1 ].
		].
	self interaction
		popup;
		when: TRMouseEnter do: [ :evt | | red blue ed el |
			el := evt element.
			hl value: el value: Color black.
			ed := el view edges.
			red := ed select: [ :e | e from model = el model ].
			red := red, (red flatCollect: [:e | el view elementsFromModel: e to model ]).
			red do: [ :e | hl value: e value: Color green ].
			
			blue := ed select: [ :e | e to model = el model ].
			blue := blue, (blue flatCollect: [:e |el view elementsFromModel: e from model]).
			blue do: [ :e | hl value: e value: Color red ].
			
			el attributes at: #ed put: red, blue.
			evt signalUpdate ];
		when: TRMouseLeave do: [ :evt | | el |
			el := evt element.
			uhl value: el.
			(el attributes at: #ed ifAbsent: [ #() ]) do: [ :e |
				uhl value: e ] ].