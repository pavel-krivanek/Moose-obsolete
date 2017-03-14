public - layout
allOfSameSizeWithPadding
	"All the same will have the same maximum size"

	| maxSize padding |
	padding := 10 @ 10.
	maxSize := shapeAndOffsets inject: 0 @ 0 into: [ :max :tuple | tuple first extent max: max ].
	self shapesDo: [ :s | s extent: maxSize + padding ]