accessing
first
	"optimized implementation"
	^ collection size > 0
		ifTrue: [collection at: 1]
		ifFalse: [self defaultValue]