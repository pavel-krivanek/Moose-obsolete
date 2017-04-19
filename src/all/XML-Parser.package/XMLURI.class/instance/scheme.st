accessing
scheme
	"Returns the URI scheme or an empty string if there isn't one"

	self parseURIStringIfUnparsed.
	^ scheme.