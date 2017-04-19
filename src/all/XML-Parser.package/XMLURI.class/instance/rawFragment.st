accessing
rawFragment
	"Returns the raw URI fragment (everything after the '#') without
	percent-decoding or an empty string if there isn't one"

	self parseURIStringIfUnparsed.
	^ rawFragment.