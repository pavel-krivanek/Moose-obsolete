examples
basic14
	<gtExample>
	
	"
	self new basic14
	"
	| b mt |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b radialSpacing: 1.
	b interaction addInteraction: RTSBFadeInteraction new.
	b shape color: [ :m | m subclasses notEmpty 
		ifTrue: [ Color lightGray ] 
		ifFalse: [ Color purple ] ].
				
	mt := TRPlatform current morphClass.
	b explore: mt using: #subclasses.
	b view canvas focusOnCenterScaled.
	^ b