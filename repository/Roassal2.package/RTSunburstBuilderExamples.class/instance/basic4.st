examples
basic4
	<gtExample>
	"
	self new basic4
	"	
	| b |
	b := RTSunburstBuilder new.
	b shape color: [ :cls | 
		cls subclasses isEmpty 
			ifTrue: [ Color red ] 
			ifFalse: [ Color orange ] ].
	
	b
		radialSpacing: 10;
		angularSpacing: 2;
		explore: TREvent using: #subclasses.

	^ b