as yet unclassified
createLabelFor: e view: aView
	| lbl |
	lbl := label elementOn: e model.
	self interaction setUpElement: lbl.
	aView add: lbl.
	e addCallback: (TRTranslationCallback new block: [
		| angle |
		angle := (e position - center ) theta.
		lbl translateTo: e position+((lbl trachelShape notRotatedWidth/2) * (angle cos @ angle sin)).
		angle := angle radiansToDegrees.
		angle := angle + ((angle between: 90 and: 270)  ifTrue: [ 180 ] ifFalse: [ 0 ]).
		lbl trachelShape angleInDegree: angle ] ).
	e translateTo: e position.
