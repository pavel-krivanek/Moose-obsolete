context
parse: anObject withContext: aPPContext
	"Parse anObject with the receiving parser and answer the parse-result or an instance of PPFailure."

	aPPContext stream: anObject asPetitStream.
	^ self parseWithContext: aPPContext.
