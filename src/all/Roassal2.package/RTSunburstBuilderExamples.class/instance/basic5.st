examples
basic5
	<gtExample>
	"
	self new basic5
	"	
	| b |
	b := RTSunburstBuilder new.
	b strategy radialSpacing:10.
	b shape current color: [ :cls | 
		(cls inheritsFrom: TREvent)
			ifTrue: [ Color lightGray ]
			ifFalse: [ Color blue ] ].
	b
		angularSpacing: 1; 
		from: (Array with: TREvent with: RTInteraction) using: #subclasses.
	^ b