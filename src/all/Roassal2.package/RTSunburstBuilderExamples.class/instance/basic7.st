examples
basic7
	<gtExample>
	"
	self new basic7
	"	
	| b|
	b := RTSunburstBuilder new.
	b layout sunburstWithRadius: 100.
	b explore: 1 using: [ :n | 
		n< 4 
			ifTrue: [ Array with: n + 1 with: n + 2 ] 
			ifFalse: [ #( ) ] ].
	^ b