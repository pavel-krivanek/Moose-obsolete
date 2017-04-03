private
emitTypeTestFor: aNodeTest with: aBlockOrNil
	highlighter startNodeTestHighlightPosition: self startPosition.
	super
		emitTypeTestFor: aNodeTest
		with: aBlockOrNil.
	highlighter endNodeTestHighlightPosition: self endPosition.
	^ aNodeTest.