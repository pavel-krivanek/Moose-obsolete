public
createPopupFor: aMorph in: aPoint background: aColor string: aString
	| popup tm vertices xdelta ydelta world position |
	tm := SimpleBalloonMorph getTextMorph: aString for: aMorph.
	tm composeToBounds.
	vertices := SimpleBalloonMorph getVertices: tm bounds.
	popup := SimpleBalloonMorph new color: aColor;
		addMorph: tm; 
		setTarget: nil;
		setVertices: vertices.
	world := aMorph world 
		ifNil: [ ^ popup ].
	position := aPoint + aMorph position.
	xdelta := ydelta := 0.
	
	(position x + popup width) > world width 
		ifTrue: [ xdelta := popup width negated ].
	(position y + popup height) > world height 
		ifTrue: [ ydelta := popup height negated ].
	popup lock;
		fullBounds;
		setProperty: #morphicLayerNumber toValue: popup morphicLayerNumber.
	popup position: position + (xdelta @ydelta).
	aMorph world addMorphFront: popup.
	
	aMorph world activeHand balloonHelp: popup.
	^ popup