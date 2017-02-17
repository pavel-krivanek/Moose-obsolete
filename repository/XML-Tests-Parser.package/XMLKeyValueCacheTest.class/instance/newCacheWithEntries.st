instance creation
newCacheWithEntries
	| cache |

	cache := self cacheClass maxSize: self maxSize.
	self keysAndValuesDo: [:key :value |
		cache
			at: key
			put: value].
	^ cache.