private
highlightStartPositionForErrorAt: aPosition in: aString
	"color all of it if the error occurred at the end of the
	input, otherwise there would be no error coloring at all"
	^ aPosition >= aString size
		ifTrue: [1]
		ifFalse: [aPosition]