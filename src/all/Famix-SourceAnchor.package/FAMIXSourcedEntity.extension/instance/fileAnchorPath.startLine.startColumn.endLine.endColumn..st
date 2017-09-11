*Famix-SourceAnchor
fileAnchorPath: aString startLine: anInteger startColumn: anInteger2 endLine: anInteger3 endColumn: anInteger4
	"I need to be called after the mooseModel is set."

	self
		sourceAnchor:
			(FAMIXFileAnchor
				fileName: aString
				startLine: anInteger
				startColumn: anInteger2
				endLine: anInteger3
				endColumn: anInteger4
				model: self mooseModel)