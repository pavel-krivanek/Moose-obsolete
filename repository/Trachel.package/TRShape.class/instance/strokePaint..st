accessing
strokePaint: aColor
	"set the color of the border line"
	[ aColor isNil or: [ aColor isColor ] ] assert.
	strokePaint := aColor