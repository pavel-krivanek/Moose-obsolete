sources
exampleCollectionSubclasses
	<gtExample>
	<iconSelectorBase64: #exampleCollectionSubclassesIcon>
	
	| b |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b 
		angularSpacing: 1;
		radialSpacing: 5.
	b shape color: [ :cls | cls subclasses notEmpty 
		ifTrue: [ Color orange ] 
		ifFalse: [ Color red ] ].

	b explore: Collection using: #subclasses.
	^ b