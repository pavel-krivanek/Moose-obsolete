accessing
last
	| lastIndex |

	"optimized implementation"
	^ (lastIndex := collection size) > 0
		ifTrue: [collection at: lastIndex]
		ifFalse: [self defaultValue]