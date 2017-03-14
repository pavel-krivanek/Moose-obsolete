copying
postCopy
	"the copyWith* methods modify copies, so any URI string of a copy must be parsed
	if it hasn't been already and then cleared because it will be obsolete after a
	URI component is changed"
	self
		parseURIStringIfUnparsed;
		uriString: nil