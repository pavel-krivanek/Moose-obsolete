public
width: aBlockOrValue
	"Set the width of the shape"
	self widthElement: [ :e | aBlockOrValue rtValue: e model ].
