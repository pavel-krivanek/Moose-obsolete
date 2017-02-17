accessing
length
	^ (( self origin x - self direction x ) * ( self origin x - self direction x )
	+
	(( self origin y - self direction y ) * ( self origin y - self direction y )))sqrt
	
