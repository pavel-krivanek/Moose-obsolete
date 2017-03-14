initialization
initializeHighlights
	super initializeHighlights.

	predicateHighlightStack := OrderedCollection new.
	functionCallHighlightStack := OrderedCollection new.