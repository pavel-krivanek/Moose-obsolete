examples
example02
	
	"
	self new example02
	"	
	| b |
	b := RTSunburstBuilder new.
	
	b radialSpacing: 5.
	b angularSpacing: 1.

	b color: [ :cls | cls subclasses notEmpty 
		ifTrue: [ Color orange ] 
		ifFalse: [ Color red ] ].

	b explore: RTObject using: #subclasses.
	b view @ RTDraggableView.
	"This should'nt work"
	b interaction addInteraction: (RTSBFadeInteraction new).
	b build.
	^ b view