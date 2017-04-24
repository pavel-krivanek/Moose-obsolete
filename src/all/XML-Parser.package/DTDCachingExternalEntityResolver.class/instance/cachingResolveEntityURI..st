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
							decoding: false])]
		ifNotNil: [:cachedEntity |
			"the limit should be enforced regardless, otherwise the same
			code could unpredictably fail depending on the state of the
			cache, so act like it was resolved even though it was cached
			and check the limit the way #resolveExternalEntityWith: does"
			self
				checkExternalEntityLimit;
				incrementTotalResolvedExternalEntities.
			cachedEntity].