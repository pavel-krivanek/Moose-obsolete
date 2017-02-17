operators-mapping
trimSpacesLeft
	"Answer a new parser that consumes spaces before the receiving parser."
	
	^ (#space asParser star, self) ==> #second