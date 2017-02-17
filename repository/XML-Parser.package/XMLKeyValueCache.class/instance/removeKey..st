removing
removeKey: aKey
	"this attempts to remove a key, but to support concurrent removal, it
	does not raise errors if it was already removed"
	^ self critical: [
		self collection
			removeKey: aKey
			ifAbsent: [nil]]