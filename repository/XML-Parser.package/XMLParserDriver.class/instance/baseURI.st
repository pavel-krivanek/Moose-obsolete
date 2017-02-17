accessing
baseURI
	"returns a string with the current base URI at this stage of parsing"
	^ baseURI ifNil: [baseURI := self documentURI]