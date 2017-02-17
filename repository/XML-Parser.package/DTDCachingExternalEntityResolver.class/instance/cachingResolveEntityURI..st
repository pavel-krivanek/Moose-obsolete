private
cachingResolveEntityURI: anXMLURIOrURIString
	| uri |

	uri := anXMLURIOrURIString asXMLURI.
	"avoid #entityCacheAtURI:ifAbsent: and #entityCacheAtURI:ifAbsentPut:
	so the cache isn't locked during resolution which could stall other
	processes"
	^ (self class entityCacheAtURI: uri)
		ifNil: [
			self class
				entityCacheAtURI: uri
				put: 
					(self resolveExternalEntityWith: [:maxSize |
						uri
							getUpToLimit: maxSize
							decoding: false])].