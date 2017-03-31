sources
exampleBasic
	<gtExample>
	
	| b |
	b := RTSunburstBuilder new.
	b radialSpacing: 10.
	b shape color: [ :cls | cls subclasses notEmpty 
		ifTrue: [ Color orange ] 
		ifFalse: [ Color red ] ].

	b explore: TRShape using: #subclasses.
	^ b