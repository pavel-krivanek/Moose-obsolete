accessing
host
	"Returns the percent-decoded host or IPv6-style host or an empty string
	if there isn't one"

	self hasIPv6Host
		ifTrue: [^ self rawHost]
		ifFalse: [^ (self percentDecode: self rawHost) asLowercase]