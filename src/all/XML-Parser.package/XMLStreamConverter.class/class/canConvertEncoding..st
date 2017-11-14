testing
canConvertEncoding: anEncodingName
	"Returns true if the receiver can decode the encoding anEncodingName.
	Lookup is case-insensitive."

	"we could remove whitespace from anEncodingName too, but the
	production rule for <?xml ...?> 'encoding' attributes disallows
	whitespace, and the HTML parser removes it from <meta> charset
	attributes before converting, so we just convert it to lowercase"
	^ self basicCanConvertEncoding: anEncodingName asLowercase