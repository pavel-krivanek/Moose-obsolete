instance creation
onURL: aURLString
	"Fetches the URL and returns new parser on the response content but doesn't
	parse it. If the URL has no scheme, it will be treated as a file path.

	Can be used to configure URL parsers with 'configuring' messages before
	parsing with parseDocument."

	^ self
		onURL: aURLString
		upToLimit: XMLParserLimits defaultDocumentReadLimit