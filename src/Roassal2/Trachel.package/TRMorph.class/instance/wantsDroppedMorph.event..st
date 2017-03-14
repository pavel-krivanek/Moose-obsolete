dropping/grabbing
wantsDroppedMorph: aMorph event: aMorphicEvent
	| shapes trEvent relativePosition wasHandled |
	relativePosition := self relativePositionFor: aMorphicEvent.
	shapes := trachelCanvas
		allShapesWithAction: TRMorphWantsDrop
		forPositionInPixels: relativePosition.
	wasHandled := false.
	(trEvent := TRMorphWantsDrop new)
		morph: self;
		droppedMorph: aMorph;
		dropMorphEvent: aMorphicEvent;
		canvas: trachelCanvas;
		position: relativePosition;
		whenHandled: [ :dropShape | 
			wasHandled := true.
			morphDropShape := dropShape.
			^ true ].
	shapes
		do: [ :each | 
			trEvent shape: each.
			each announce: trEvent ].
	^ false