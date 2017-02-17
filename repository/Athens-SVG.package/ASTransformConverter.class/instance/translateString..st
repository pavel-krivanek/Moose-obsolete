operations
translateString: aString 
	"translate the transform data 
	
	'rotate(10) scale (1) translate (100,10)'
	"

	stream := aString readStream.
	transform := AthensAffineTransform new.
		
	[ stream atEnd ] whileFalse: [ | type |
		type := (stream upTo: $() trimBoth.	
		self perform: type asSymbol.
		
		stream upTo: $).
		self skipBlanks
		 ].
	^ transform