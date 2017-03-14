mutual exclusion
critical: aBlock
	"Can be used to lock the cache during one or more operations in aBlock"

	^ self mutex critical: aBlock