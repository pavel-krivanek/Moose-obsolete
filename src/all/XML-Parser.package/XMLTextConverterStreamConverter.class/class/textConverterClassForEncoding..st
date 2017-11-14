accessing
textConverterClassForEncoding: anEncodingName
	"Returns the TextConverter class for anEncodingName (case insensitive)"

	"avoid #at:ifAbsent: and #at:ifAbsentPut: so the cache isn't locked
	during the class lookup, which could stall other processes"
	self encodingNamesAndTextConverterClassesCache
		at: anEncodingName
		ifPresent: [:classForEncoding | ^ classForEncoding].

	"this will store the class as nil if it wasn't found to prevent future lookup"
	^ self encodingNamesAndTextConverterClassesCache
		at: anEncodingName
		put: (self findTextConverterClassForEncoding: anEncodingName)