examples
basic15
	<gtExample>
	
	"
	self new basic15
	"
	| b mt |
	b := RTSunburstBuilder new.
	b layout sunburstWithArcWidth: 30.
	b 
		radialSpacing: 2;
		angularSpacing: 1.
	
	b interaction addInteraction: RTSBFadeInteraction new.
	b shape color: [ :m | m subclasses notEmpty 
		ifTrue: [ Color orange ] 
		ifFalse: [ Color red ] ].
				
	mt := TRPlatform current morphClass.
	b explore: mt using: #subclasses.
	b view canvas focusOnCenterScaled.
	^ b