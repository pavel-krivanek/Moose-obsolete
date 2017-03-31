dropping/grabbing
acceptDroppingMorph: aMorph event: anEvent
	| trEvent relativePosition |
	relativePosition := self relativePositionFor: anEvent.
	(trEvent := TRMorphDrop new)
		morph: self;
		droppedMorph: aMorph;
		dropMorphEvent: anEvent;
		canvas: trachelCanvas;
		position: relativePosition.
	morphDropShape announce: trEvent.
	morphDropShape := nil