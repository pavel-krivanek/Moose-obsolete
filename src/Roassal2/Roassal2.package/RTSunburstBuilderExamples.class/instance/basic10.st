examples
basic10
	<gtExample>
	
	"
	self new basic10
	"	
	| b |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b shape color: [ :cls | 
		cls subclasses isEmpty 
			ifTrue: [ Color red ] 
			ifFalse: [ Color orange ] ].
	
	b
		radialSpacing: 10;
		angularSpacing: 2;
		explore: TREvent using: #subclasses.

	^ b