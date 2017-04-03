visiting - variables
visitVariableReference: aVariableReference
	highlighter startVariableReferenceHighlightPosition: self startPosition.
	super visitVariableReference: aVariableReference.
	highlighter endVariableReferenceHighlightPosition: self endPosition.
	^ aVariableReference.