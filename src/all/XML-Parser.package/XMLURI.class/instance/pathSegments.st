accessing
pathSegments
	"Returns a temporary OrderedCollection of percent-decoded path segments"

	^ self rawPathSegments collect: [:each | self percentDecode: each]