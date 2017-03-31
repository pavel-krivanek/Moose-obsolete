parsing
parser
	| parser |

	parser := super parser.
	self document
		ifNotNil: [self setupInnerXMLDocumentForParser: parser].
	self nodeStack size > 0
		ifTrue: [self setupInnerXMLNodesForParser: parser].
	^ parser.