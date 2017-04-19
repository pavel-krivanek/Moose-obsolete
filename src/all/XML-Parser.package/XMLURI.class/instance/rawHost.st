accessing
rawHost
	"Returns the raw host without percent-decoding or the IPv6-style host
	or an empty string if there isn't one"

	self parseURIStringIfUnparsed.
	^ rawHost.