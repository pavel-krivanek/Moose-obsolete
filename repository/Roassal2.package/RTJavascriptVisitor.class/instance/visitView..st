visitor
visitView: aView
	| elements |
	stream nextPutAll: 'mamani.color('.
	self addColorBase: aView canvas color.
	stream nextPutAll:(');
	mamani.camera.setScale(<1p>);' 
	expandMacrosWith: aView canvas camera scale).

	aView announcer subscriptions trSubscriptions isEmpty ifFalse: [
		stream nextPutAll: 'mamani.addInteractions('.
		self visitInteractions: aView.
		stream nextPutAll: ');
	'].
	elements := (aView canvas shapes collect: [ :s | 
		s element isNil ifTrue: [ s ] ifFalse: [ s element ] ]) asOrderedCollection removeDuplicates.
	
	stream nextPutAll:'
	var shapes = ['.
	elements do: [ :e | e accept: self ].
	stream nextPutAll:'
	];
	mamani.addShapes(shapes);
'.
	aView canvas accept: self