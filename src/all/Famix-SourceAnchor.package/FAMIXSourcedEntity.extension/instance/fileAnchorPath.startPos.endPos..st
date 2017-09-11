*Famix-SourceAnchor
fileAnchorPath: aString startPos: anInteger endPos: anotherInteger
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FAMIXIndexedFileAnchor
				fileName: aString
				startPos: anInteger
				endPos: anotherInteger
				model: self mooseModel)