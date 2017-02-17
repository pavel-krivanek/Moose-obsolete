accessing
documentURI
	"Returns current document base URI string"
	^ documentURI ifNil: [documentURI := self defaultDocumentURI]