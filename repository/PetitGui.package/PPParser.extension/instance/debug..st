*petitgui-debug
debug: anObject
	"Parse anObject with the receiving parser and answer the parse-result or an instance of PPFailure."
	
	^ self enableDebug parse: anObject asPetitStream