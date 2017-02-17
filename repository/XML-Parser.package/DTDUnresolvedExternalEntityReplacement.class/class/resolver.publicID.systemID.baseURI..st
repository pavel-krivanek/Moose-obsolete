instance creation
resolver: aResolver publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	^ self new
		setResolver: aResolver
		publicID: aPublicID
		systemID: aSystemID
		baseURI: aBaseURIString