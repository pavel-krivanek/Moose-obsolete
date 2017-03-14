handling - lexical
startDTD: aRootElementName publicID: aPublicID systemID: aSystemID
	"Handles the start of a '<!DOCTYPE ...>' declaration. Any events
	after this and until endDTD is sent are part of the internal subset
	of the DTD.
	
	aRootElementName - the expected name of the document's root element
	aPublicID - the public ID of the external DTD subset or an empty string
	aSystemID - the URI where the external subset can be found or an empty string"