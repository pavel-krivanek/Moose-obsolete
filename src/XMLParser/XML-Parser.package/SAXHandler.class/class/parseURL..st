parsing
parseURL: aURLString
	"Fetches the URL and parses the response content. If the URL has no scheme,
	it will be treated as a file path."

	^ (self onURL: aURLString) parseDocument