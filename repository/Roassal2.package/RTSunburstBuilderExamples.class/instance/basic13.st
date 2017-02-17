examples
basic13
	<gtExample>
	
	"
	self new basic13
	"	
	| b mt |
	b := RTSunburstBuilder new.
	b radialSpacing: 1.
	b interaction addInteraction: RTSBFadeInteraction new.
	b shape current 
				color: [ :m | m subclasses notEmpty ifTrue: [ Color orange ] ifFalse: [ Color red ] ].
				
	mt := TRPlatform current morphClass.
	b explore: mt using: #subclasses.
	b view canvas focusOnCenterScaled.
	^ b