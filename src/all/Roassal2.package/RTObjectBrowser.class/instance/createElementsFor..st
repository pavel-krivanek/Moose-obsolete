private
createElementsFor: anObject
	| b obj |
	b := RTMondrian new.
	b shape box color: Color veryLightGray; 
		withTextAbove: [ anObject class name ].
	b interaction menu
		item: 'Inspect' action: [:e | e model inspect];
		item: 'Browse class' action: [ :e | e model class browse ];
		item: 'Close ' action: [:e | 
			(self objects at: anObject) do: #remove.
			view canvas focusOnCenterScaled.
			view signalUpdate ].
	b interaction
		when: TRMouseDragEnd do: [ :e | view canvas focusOnCenterScaled. view signalUpdate ].
	b node: anObject forIt: [ 
		b shape label text: #key;
			if: [ :assoc | assoc value isNil ] color: Color red.
		b interaction 
			noInteractions;
			highlight;
			when: TRMouseClick do: [ :evt |
				obj := evt element model value.
				self addObject: obj.
				view add: (RTArrowedLine new 
					withShorterDistanceAttachPoint; 
					color: Color blue;
					edgeFrom: evt element to: (self objects at: obj) first)
				 ];
			popupText: [:ass | ass value asString ].
		b nodes: (anObject class allInstVarNames collect: [ :n |
			n -> (anObject instVarNamed: n) ] ).
		b layout verticalLine ].
	b build.
	^ b view elements