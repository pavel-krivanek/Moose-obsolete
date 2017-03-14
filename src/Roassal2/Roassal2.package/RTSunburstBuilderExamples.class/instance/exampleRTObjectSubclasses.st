sources
exampleRTObjectSubclasses
	<gtExample>
	<iconSelectorBase64: #exampleRTObjectSubclassesIcon>
	
	| b c1 c2 |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	c1 := Color r: 0/255.0 g: 100/255.0 b: 0/255.0.
	c2 := Color r: 73/255.0 g: 121/255.0 b: 107/255.0.
	b color: [ :cls | cls subclasses notEmpty 
		ifTrue: [ c2 ] ifFalse: [ c1 ] ].

	b explore: RTObject using: #subclasses.
	^ b