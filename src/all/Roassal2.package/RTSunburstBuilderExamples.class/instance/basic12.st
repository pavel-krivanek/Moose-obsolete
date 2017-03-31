examples
basic12
	<gtExample>
	
	"
	self new basic12
	"	
	| b |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b strategy radialSpacing:10.
	b shape current color: [ :cls | 
		(cls inheritsFrom: TREvent)
			ifTrue: [ Color lightGray ]
			ifFalse: [ Color blue ] ].
	b
		angularSpacing: 1; 
		hasCenter: false;
		from: (Array with: TREvent with: RTInteraction) using: #subclasses.
	^ b