accessing
rawQuery
	"Returns an OrderedCollection of raw query string key=value pairs
	without percent/plus-decoding"

	self parseURIStringIfUnparsed.
	^ rawQuery.