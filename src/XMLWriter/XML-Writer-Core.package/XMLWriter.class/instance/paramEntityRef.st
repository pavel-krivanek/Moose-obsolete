writing
paramEntityRef
	^ (self pushNewMarkupWriter: XMLEntityReferenceWriter) isParameter: true