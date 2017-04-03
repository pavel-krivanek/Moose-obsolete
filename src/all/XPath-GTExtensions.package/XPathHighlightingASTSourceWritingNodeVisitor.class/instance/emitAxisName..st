private
emitAxisName: anAxisNameStringOrCharacter
	highlighter startAxisHighlightPosition: self startPosition.
	super emitAxisName: anAxisNameStringOrCharacter.
	highlighter endAxisHighlightPosition: self endPosition.