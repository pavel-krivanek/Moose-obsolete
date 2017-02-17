accessing
contents
	"returns the full, untruncated output, unlike #printString, which may
	truncate"

	self write.
	^ stream contents.