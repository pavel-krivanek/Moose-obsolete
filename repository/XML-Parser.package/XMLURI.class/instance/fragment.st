accessing
fragment
	"Returns the percent-decoded URI fragment (everything after the '#') or
	an empty string if there isn't one"

	^ self percentDecode: self rawFragment