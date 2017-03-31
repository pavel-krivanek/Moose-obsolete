accessing
at: anIndex
	"optimized"
	(anIndex > 0 and: [anIndex <= collection size])
		ifTrue: [^ collection at: anIndex]
		ifFalse: [^ self defaultValue]