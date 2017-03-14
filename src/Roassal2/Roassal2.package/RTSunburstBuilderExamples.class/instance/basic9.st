examples
basic9
	<gtExample>
	"
	self new basic9
	"	
	| b |
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b shape current 
		colorElement: [ :el | Color grayScale256: ((el attributeAt: #depth ifAbsent: [ 0 ]) * 30) ].

	b explore: RTObject using: #subclasses.
	^ b