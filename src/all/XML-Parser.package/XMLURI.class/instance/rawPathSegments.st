accessing
rawPathSegments
	"Returns an OrderedCollection of raw path segments without
	percent-decoding"

	self parseURIStringIfUnparsed.
	^ rawPathSegments.