building presentations
progressIn: aComposite 
	(self session stream stream respondsTo: #asPositionMorph)
		ifFalse: [ ^ self ].
	aComposite morph 
		title: 'Progress';
		display: [
			| morph |
			morph := ScrollPane new.
			morph color: Color white.  
			morph scroller addMorph: self session stream stream asPositionMorph.
			morph ].