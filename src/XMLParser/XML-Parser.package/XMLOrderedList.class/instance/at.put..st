accessing
at: anIndex put: aValue
	"treats index = size + 1 as addLast: gemstone compatibility"
	anIndex = (collection size + 1)
		ifTrue: [^ collection addLast: aValue]
		ifFalse: [^ collection at: anIndex put: aValue]