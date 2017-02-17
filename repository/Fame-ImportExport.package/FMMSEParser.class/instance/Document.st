expressions
Document
	"Matches a document node (returns a boolean)."
	"Document := EOF { openDocument; closeDocument }
		| OPEN { openDocument } Element* CLOSE { closeDocument }"
	self tWHITESPACE.
	self atEnd 
		ifTrue: 
			[ client beginDocument.
			client endDocument ]
		ifFalse: 
			[ self tOPEN ifFalse: [ ^ self syntaxError ].
			client beginDocument.
			[ self Element ] whileTrue.
			self tCLOSE ifFalse: [ ^ self syntaxError ].
			client endDocument ].
	self tWHITESPACE.
	^ true