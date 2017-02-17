rectangle functions
extendBy1: num
|vect k  xn yn|
	( self origin x = self direction x ) 
		ifTrue:[ xn := self origin x.
			( self origin y > self direction y )
				ifFalse:[ yn := self direction y + num. ] 
				ifTrue:[ yn := self direction y - num ] ]
		ifFalse:[
			k := ( self origin y - ( self direction y ) )/( self origin x - ( self direction x ) ).
			( self origin x > self direction x ) 
				ifFalse:[ xn := self direction x + num. ] 
				ifTrue:[ xn := self direction x - num. ].
			yn := self direction y + ( k *( xn - self direction x ))].
	vect := GRay origin: self origin direction: ( xn @ yn ).
	(vect asLine = self asLine)
	ifTrue:[^vect]
