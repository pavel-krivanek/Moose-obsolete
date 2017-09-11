accessing
minSize: aValueOrAOneArgBlock
	"The minimal size to which one can resize the shape."

	minSize := [ :anElement | aValueOrAOneArgBlock rtValue: anElement model ]