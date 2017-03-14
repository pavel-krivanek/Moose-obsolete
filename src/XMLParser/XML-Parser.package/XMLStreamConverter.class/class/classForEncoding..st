accessing
classForEncoding: anEncodingName
	"avoid #at:ifAbsent: and #at:ifAbsentPut: so the cache isn't locked
	during the class lookup, which could stall other processes"
	self encodingNamesAndClassesCache
		at: anEncodingName
		ifPresent: [:classForEncoding | ^ classForEncoding].

	"this will store the class as nil if it wasn't found to prevent future lookup"
	^ self encodingNamesAndClassesCache
		at: anEncodingName
		put: (self findClassForEncoding: anEncodingName).