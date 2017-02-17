parsing
parseURL: aURLString upToLimit: aMaxSize
	"Fetches the URL upto the input limit (nil to disable) and parses the
	response content. If the URL has no scheme, it will be treated as a file
	path."

	^ (self
		onURL: aURLString
		upToLimit: aMaxSize) parseDocument