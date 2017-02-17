sources
exampleMorphSubclasses
	<gtExample>
	<iconSelectorBase64: #exampleMorphSubclassesIcon>
	
	| b |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 400.
	b color: [ :cls | cls subclasses isEmpty ifTrue: [ Color purple ] ifFalse: [ Color lightGray ] ].

	b explore: TRPlatform current morphClass using: #subclasses.
	^ b