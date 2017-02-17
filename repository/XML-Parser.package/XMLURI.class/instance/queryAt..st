accessing
queryAt: aKey
	"Returns the last percent/plus-decoded value of the query string
	parameter aKey or an empty string if there isn't one"

	^ self
		queryAt: aKey
		ifAbsent: ['']