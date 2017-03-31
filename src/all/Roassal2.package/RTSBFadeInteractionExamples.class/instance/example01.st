examples
example01
	
	"
	self new example01
	"	
	| b |
	b := RTSunburstBuilder new.
	
	"This should be called before the explore method"
	b interaction addInteraction: RTSBFadeInteraction new.
	
	b radialSpacing: 5.
	b angularSpacing: 1.

	b color: [ :cls | cls subclasses notEmpty 
		ifTrue: [ Color orange ] 
		ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	^ b