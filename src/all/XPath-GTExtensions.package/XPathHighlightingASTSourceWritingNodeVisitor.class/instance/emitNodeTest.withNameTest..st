private
emitNodeTest: aNodeTest withNameTest: aNameTestString
	highlighter startNodeTestHighlightPosition: self startPosition.
	super
		emitNodeTest: aNodeTest
		withNameTest: aNameTestString.
	highlighter endNodeTestHighlightPosition: self endPosition.
	^ aNodeTest.