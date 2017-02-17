instance creation
saxDriver: aSAXDriver documentURI: anExternalSubsetURIString
	^ self new
		setSAXDriver: aSAXDriver
		documentURI: anExternalSubsetURIString