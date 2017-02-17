accessing
viewBox: aString 
	"min-x min-y width height"
	
	| conv mx my w h |
	
	conv := ASConverter new stream: aString readStream.
	
	mx := conv skipBlanks nextNumber.
	my := conv skipBlanks nextNumber.
	w := conv skipBlanks nextNumber.
	h := conv skipBlanks nextNumber.

	viewBox := Rectangle origin: mx@my extent: w@h