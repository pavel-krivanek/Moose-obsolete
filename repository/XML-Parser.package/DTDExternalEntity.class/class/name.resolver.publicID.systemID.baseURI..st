instance creation
name: aName resolver: aResolver publicID: aPublicID systemID: aSystemID baseURI: aBaseURIString
	^ self new
		setName: aName
		unresolvedReplacement:
			(DTDUnresolvedExternalEntityReplacement
				resolver: aResolver
				publicID: aPublicID
				systemID: aSystemID
				baseURI: aBaseURIString)