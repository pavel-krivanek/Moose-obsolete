accessing
pathSegments
	"Returns a collection of percent-decoded path segments"

	^ self rawPathSegments collect: [:each | self percentDecode: each]