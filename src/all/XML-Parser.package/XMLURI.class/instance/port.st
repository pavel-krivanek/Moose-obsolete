accessing
port
	"Returns the integer port or nil if there isn't one"

	self parseURIStringIfUnparsed.
	^ port.