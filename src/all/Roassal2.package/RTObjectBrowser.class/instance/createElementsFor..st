private
createElementsFor: anObject
	| b vars edges |
	b := RTMondrian new.
	b shape box color: Color veryLightGray; 
		withTextAbove: [ anObject class name ].
	self addInteractions: b.
	
	b node: anObject forIt: [ 
		b shape label text: #key;
			if: [ :assoc | assoc value isNil ] color: Color red.
		b interaction 
			noInteractions;
			highlight;
			when: TRMouseClick do: [ :evt |
				self openNewObject: evt ];
			popupText: [:ass | ass value asString ].
		vars := anObject class allInstVarNames collect: [ :n |
			n -> (anObject instVarNamed: n)].
		
		b nodes: vars.
		b layout verticalLine ].
	b build.
	edges := vars 
		select: [ :v | self objects includesKey: v value ]
		thenCollect: [ :v | self 
			edgeFrom: (b view elementFromModel: v)
			to: (self objects at: v value) first ].
	^ b view elements->edges.