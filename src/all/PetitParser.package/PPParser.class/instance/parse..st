parsing
parse: anObject
	"Parse anObject with the receiving parser and answer the parse-result or an instance of PPFailure."

	^ self parse: anObject withContext: PPContext new